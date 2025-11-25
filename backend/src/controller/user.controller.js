import connection from "../config/bd_cnx.js";

export async function CreateUser(req, res) {
    const { mail, password, username } = req.body;
    if (!mail || !password || !username) {
        return res.status(400).send({ error: 'Missing parameters' });
    }
    try {
    req.session.user = { mail, password, username };

    const [rows] = await connection.execute(
            'CALL InsertUser (?, ?, ?)',
            [mail, password, username]
        );
    

    // Première ligne du premier result set
    const userRow = rows[0][0];

        // Si la procédure renvoie une colonne "error"
    if (userRow && userRow.error === 1) {
      return res.status(401).json({ message: 'Un compte est déjà associé à ce mail' });
    }


    // Stocke les infos dans la session
    req.session.user = {
      mail: userRow.mail,
      username: userRow.username,
      description: userRow.description
    };
    
    return res.json({ message: 'User created', user: req.session.user });
  } catch (err) {
    return res.status(500).json({ error: 'Server error' });
  }
};




// test
export async function Login(req, res) {
  const { mail, password } = req.body;
  if (!mail || !password) {
    return res.status(400).json({ error: 'Missing parameters' });
  }

  try {
    const [rows] = await connection.execute(
      'CALL LoginUser(?, ?)',
      [mail, password]
    );

    // Première ligne du premier result set
    const userRow = rows[0][0];

    // Si la procédure renvoie une colonne "error"
    if (userRow.error) {
      return res.status(401).json({ message: 'Invalid login' });
    }

    // Stocke les infos dans la session
    req.session.user = {
      mail: userRow.mail,
      username: userRow.username,
      description: userRow.description
    };

    return res.json({
      message: 'Login successful',
      user: req.session.user
    });
  } catch (err) {
    return res.status(500).json({ error: 'Server error' });
  }
}


export async function Logout(req, res) {
  req.session.destroy();
  res.send({
    test: `Logged out`,
  });
};