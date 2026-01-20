drop database if exists musicCharts;
create database musicCharts;
use musicCharts;

CREATE TABLE Country(
  `id` VARCHAR(100),
  `name` VARCHAR(20),
  PRIMARY KEY(`id`)
)ENGINE=InnoDB;
CREATE TABLE Artist(
   `id` VARCHAR(100),
   `name` VARCHAR(300),
   `imageUrl` TEXT,
   `description` TEXT,
   PRIMARY KEY(`id`)
)ENGINE=InnoDB;

CREATE TABLE Reward(
   `id` INT,
   `name` VARCHAR(50),
   PRIMARY KEY(`id`)
)ENGINE=InnoDB;

CREATE TABLE User(
   `id` INT auto_increment,
   `mail` VARCHAR(50),
   `password` VARCHAR(100),
   `username` VARCHAR(50),
   `description` varchar(100),
   `nbMusicListen` int,
   PRIMARY KEY(`id`)
)ENGINE=InnoDB;

CREATE TABLE Album(
   `id` VARCHAR(100),
   `title` VARCHAR(300),
   `coverUrl` TEXT,
   `realeaseYear` INT,
   `artistId` VARCHAR(100) NOT NULL,
   PRIMARY KEY(`id`),
   FOREIGN KEY(`artistId`) REFERENCES Artist(`id`)
)ENGINE=InnoDB;

CREATE TABLE Music(
   `id` VARCHAR(100),
   `title` VARCHAR(50),
   `albumId` VARCHAR(100) NOT NULL,
   PRIMARY KEY(`id`),
   FOREIGN KEY(`albumId`) REFERENCES Album(`id`)
)ENGINE=InnoDB;

CREATE TABLE Evaluate(
   `userId` INT,
   `id` VARCHAR(100),
   `dateNotice` DATE,
   `value` VARCHAR(50),
   `description` VARCHAR(100),
   `musicId` VARCHAR(100) NOT NULL,
   PRIMARY KEY(`userId`, `id`),
   FOREIGN KEY(`userId`) REFERENCES `User`(`id`),
   FOREIGN KEY(`musicId`) REFERENCES Music(`id`)
)ENGINE=InnoDB;

CREATE TABLE WeeklyTop(
   `musicId` VARCHAR(100),
   `countryId` VARCHAR(100),
   `weekDate` DATE,
   `rank` INT,
   `previousRank` INT,
   PRIMARY KEY(`musicId`, `countryId`, `weekDate`),
   FOREIGN KEY(`musicId`) REFERENCES Music(`id`),
   FOREIGN KEY(`countryId`) REFERENCES Country(`id`)
)ENGINE=InnoDB;

CREATE TABLE have(
   `artistId` VARCHAR(100),
   `rewardId` INT,
   `date` DATE,
   PRIMARY KEY(`artistId`, `rewardId`),
   FOREIGN KEY(`artistId`) REFERENCES Artist(`id`),
   FOREIGN KEY(`rewardId`) REFERENCES Reward(`id`)
)ENGINE=InnoDB;

CREATE TABLE favorite(
   `musicId` VARCHAR(100),
   `userId` INT,
   PRIMARY KEY(`musicId`, `userId`),
   FOREIGN KEY(`musicId`) REFERENCES Music(`id`),
   FOREIGN KEY(`userId`) REFERENCES User(`id`)
)ENGINE=InnoDB;

INSERT INTO Country VALUES
('PL4fGSI1pDJn6puJdseH2Rt9sMvt9E2M4i', 'Global'),
('PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs', 'France'),
('PL4fGSI1pDJn6O1LS0XSdF3RyO0Rq_LDeI', 'United States'),
('PL4fGSI1pDJn5JiDypHxveEplQrd7XQMlX', 'Italy');

DELIMITER $
DROP procedure if exists GetArtist$
Create procedure GetArtist(artistId VARCHAR(100))
begin
	Select  M.id as MusicId,M.title as TitreMusic,A.id as AlbumId,A.title as TitreAlbum,A.coverUrl as                 --
	CouvertureAlbum,A.realeaseYear,AR.id as IdArtist,AR.name as nomArtist,AR.imageUrl as ImageArtist,AR.description   --
    FROM Music M inner Join Album A on M.albumId = A.id                                                               
    inner Join Artist AR on A.artistId = AR.id    
    where AR.id = artistId;
end;
$

DELIMITER $


DROP procedure if exists GetWeeklyTop$
Create procedure GetWeeklyTop(p_weekDate DATE,p_countryId varchar(100))
begin 
	select W.countryId, W.weekDate, W.rank, W.previousRank,M.id as MusicId,M.title as TitreMusic,A.id as AlbumId,A.title as TitreAlbum,A.coverUrl as 
	CouvertureAlbum,A.realeaseYear,AR.id as IdArtist,AR.name as nomArtist,AR.imageUrl as ImageArtist,AR.description 
    from WeeklyTop W inner Join Music M on W.musicId = M.id									-- weektop -> music --> album --> artist
    inner Join Album A on M.albumId = A.id
    inner Join Artist AR on A.artistId = AR.id
    where W.weekDate = p_weekDate and W.countryId = p_countryId ORDER BY W.rank;
end;
$

-- PS Login User

DELIMITER $
DROP PROCEDURE IF EXISTS LoginUser$ -- demande un nom d'uttilisateur et renvoie ses infos
CREATE PROCEDURE LoginUser(IN p_mail VARCHAR(50))
BEGIN
    -- On ne compare pas le mot de passe ici
    SELECT mail, username, description, password 
    FROM User 
    WHERE mail = p_mail;
END$
DELIMITER ;


-- PS Insert User

DELIMITER $
DROP PROCEDURE IF EXISTS InsertUser$ -- Ajoute un user en base prend en parametre mail, password et username
CREATE PROCEDURE InsertUser(IN p_mail VARCHAR(50), IN p_password VARCHAR(100), IN p_username VARCHAR(50))
BEGIN
    DECLARE v_count INT;

    -- Vérifier si le mail existe déjà
    SELECT COUNT(*) INTO v_count
    FROM `user`
    WHERE mail = p_mail;

    IF v_count > 0 THEN
        SELECT TRUE AS error;
    ELSE
        INSERT INTO `user`(mail, password, username)VALUES(p_mail, p_password, p_username);
        SELECT * FROM `user` WHERE mail = p_mail;
    END IF;
END$

DELIMITER ;

        
        

-- ps Insert delete favorie
DELIMITER $
DROP PROCEDURE IF EXISTS AddRemoveFavorite$
create procedure AddRemoveFavorite(IN p_mail VARCHAR(50), in p_musicId VARCHAR(100))
begin
	DECLARE v_userId INT;
    DECLARE v_favoriteExists INT DEFAULT 0; 

	SELECT id INTO v_userId FROM user WHERE mail = p_mail;

    
        SELECT COUNT(*) INTO v_favoriteExists
        FROM favorite
        WHERE userId = v_userId AND musicId = p_musicId;

        IF v_favoriteExists > 0 THEN
            DELETE FROM favorite
            WHERE userId = v_userId AND musicId = p_musicId;
            select false as is_added;
            
        ELSE
            INSERT INTO favorite (userId, musicId)
            VALUES (v_userId, p_musicId);
            select true as is_added;
            
        END IF;

end$

DELIMITER $
DROP procedure if exists GetArtist$
Create procedure GetArtist(artistId VARCHAR(100))
begin
	Select  M.id as MusicId,M.title as TitreMusic,A.id as AlbumId,A.title as TitreAlbum,A.coverUrl as                 --
	CouvertureAlbum,A.realeaseYear,AR.id as IdArtist,AR.name as nomArtist,AR.imageUrl as ImageArtist,AR.description   --
    FROM Music M inner Join Album A on M.albumId = A.id                                                               
    inner Join Artist AR on A.artistId = AR.id    
    where AR.id = artistId;
end;$
DELIMITER ;


DELIMITER $


DROP PROCEDURE IF EXISTS GetAllArtists $
CREATE PROCEDURE GetAllArtists()
BEGIN
    SELECT * FROM artist;
END $

DELIMITER ;

DELIMITER $

DROP PROCEDURE IF EXISTS GetArtistsByName $

CREATE PROCEDURE GetArtistsByName(IN p_artistName VARCHAR(300))
BEGIN
    -- Utilisation de CONCAT pour ajouter les jokers % autour de la variable
    SELECT * FROM artist 
    WHERE name LIKE CONCAT('%', p_artistName, '%');
END $

DELIMITER ;
DELIMITER $

DROP PROCEDURE IF EXISTS GetFavoriteByUserId $
CREATE PROCEDURE GetFavoriteByUserId(IN p_mail VARCHAR(300))
BEGIN
    DECLARE v_userId INT;
    
    SELECT id INTO v_userId FROM user WHERE mail = p_mail;
    
    SELECT * FROM favorite WHERE userId = v_userId; 
END $

CREATE PROCEDURE GetDateWeek()
BEGIN

    SELECT distinct DATE_FORMAT(weekDate, '%Y-%m-%d') as weekDate
    FROM WeeklyTop 
    where weekDate is not null 
    order by weekDate desc ;

END$
DELIMITER ;