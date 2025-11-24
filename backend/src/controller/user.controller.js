// test 

export async function CreateUser(req, res) {
    const { mail, password, username } = req.body;
    if (!mail || !password || !username) {
        return res.status(400).send({ error: 'Missing parameters' });
    }
    req.session.user = { mail, password, username };

    const [rows] = await connection.execute(
            'INSERT INTO User (mail, password, username) VALUES (?, ?, ?)',
            [mail, password, username]
        );
    
};

export async function Test(req, res) {
  res.send({
    test: `mail: ${req.session.user.mail} Password: ${req.session.user.password}`,
  });
};

export async function Logout(req, res) {
  req.session.destroy();
  res.send({
    test: `Logged out`,
  });
};