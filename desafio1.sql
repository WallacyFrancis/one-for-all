DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `plans`(
    `plan_id` INT AUTO_INCREMENT NOT NULL,
    `plan` VARCHAR(100) NOT NULL,
    `value` DECIMAL (4, 2),
    PRIMARY KEY (`plan_id`)
) ENGINE = InnoDB;

CREATE TABLE `users`(
    `user_id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `age` INT NOT NULL,
    `signature_date`  DATE NOT NULL,
    `plan_fk`INT NOT NULL,
    PRIMARY KEY (`user_id`),
    FOREIGN KEY (`plan_fk`) REFERENCES `SpotifyClone`.`plans`(`plan_id`)
) ENGINE = InnoDB;

CREATE TABLE `artists`(
    `artist_id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`artist_id`)
) ENGINE = InnoDB;

CREATE TABLE `follows`(
    `user_fk` INT NOT NULL,
    `artist_fk` INT NOT NULL,
    FOREIGN KEY (`user_fk`) REFERENCES `SpotifyClone`.`users`(`user_id`),
    FOREIGN KEY (`artist_fk`) REFERENCES `SpotifyClone`.`artists`(`artist_id`)
) ENGINE = InnoDB;

CREATE TABLE `albuns`(
    `album_id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(150) NOT NULL,
    `artist_fk` INT NOT NULL,
    PRIMARY KEY (`album_id`),
    FOREIGN KEY (`artist_fk`) REFERENCES `SpotifyClone`.`artists`(`artist_id`)
) ENGINE = InnoDB;

CREATE TABLE `sounds`(
    `sound_id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(150) NOT NULL,
    `duration` INT NOT NULL,
    `album_fk`INT NOT NULL,
    PRIMARY KEY (`sound_id`),
    FOREIGN KEY (`album_fk`) REFERENCES `SpotifyClone`.`albuns`(`album_id`)
) ENGINE = InnoDB;

CREATE TABLE `history_reproduction`(
    `user_fk` INT NOT NULL,
    `sound_fk` INT NOT NULL,
    FOREIGN KEY (`user_fk`) REFERENCES `SpotifyClone`.`users`(`user_id`),
    FOREIGN KEY (`sound_fk`) REFERENCES `SpotifyClone`.`sounds`(`sound_id`)
) ENGINE = InnoDB;


INSERT INTO `plans` (`plan`, `value`)
VALUES
  ('gratuito', '0.00'),
  ('universitário', '5.99'),
  ('pessoal', '6.99'),
  ('familiar', '7.99');

INSERT INTO `users` (`name`, `age`, `signature_date`, `plan_fk`)
VALUES
  ('Thati', 23, '2019-10-20', 1),
  ('Cintia', 35, '2017-12-30', 4),
  ('Bill', 20, '2019-06-05', 2),
  ('Roger', 45, '2020-05-13', 3),
  ('Norman', 58, '2017-02-17', 3),
  ('Patrick', 33, '2017-01-06', 4),
  ('Vivian', 26, '2018-01-05', 2),
  ('Carol', 19, '2018-02-14', 2),
  ('Angelina', 42, '2018-04-29', 4),
  ('Paul', 46, '2017-01-17', 4);
  
INSERT INTO `artists` (`name`)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');
  
INSERT INTO `follows` (`user_fk`, `artist_fk`)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 2),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 4),
  (9, 3),
  (10, 2),
  (10, 6);
  
INSERT INTO `albuns` (`name`, `artist_fk`)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4),
  ('Library of liberty', 4),
  ('Chained Down', 5),
  ('Cabinet of fools', 5),
  ('No guarantees', 5),
  ('Apparatus', 6);
  
INSERT INTO `sounds` (`name`, `duration`, `album_fk`)
VALUES
  ("Soul For Us", 200, 1),
  ("Reflections Of Magic", 163, 1),
  ("Dance With Her Own", 116, 1),
  ("Troubles Of My Inner Fire", 203, 2),
  ("Time Fireworks", 152, 2),
  ("Magic Circus", 105, 3),
  ("Honey, So Do I", 207, 3),
  ("Sweetie, Let's Go Wild", 139, 3),
  ("She Knows", 244, 3),
  ("Fantasy For Me", 100, 4),
  ("Celebration Of More", 146, 4),
  ("Rock His Everything", 223, 4),
  ("Home Forever", 231, 4),
  ("Diamond Power", 241, 4),
  ("Let's Be Silly", 132, 4),
  ("Thang Of Thunder", 240, 5),
  ("Words Of Her Life", 185, 5),
  ("Without My Streets", 176, 5),
  ("Need Of The Evening", 190, 6),
  ("History Of My Roses", 222, 6),
  ("Without My Love", 111, 6),
  ("Walking And Game", 123, 6),
  ("Young And Father", 197, 6),
  ("Finding My Traditions", 179, 7),
  ("Walking And Man", 229, 7),
  ("Hard And Time", 135, 7),
  ("Honey, I'm A Lone Wolf", 150, 7),
  ("She Thinks I Won't Stay Tonigh", 166, 8),
  ("He Heard You're Bad For Me", 154, 8),
  ("He Hopes We Can't Stay", 210, 8),
  ("I Know I Know", 117, 8),
  ("He's Walking Away", 159, 9),
  ("He's Trouble", 138, 9),
  ("I Heard I Want To Bo Alone", 120, 9),
  ("I Ride Alone", 151, 9),
  ("Honey", 79, 10),
  ("You Cheated On Me", 95, 10),
  ("Wouldn't It Be Nice", 213, 10),
  ("Baby", 136, 10),
  ("You Make Me Feel So..", 83, 10);
  
INSERT INTO `history_reproduction` (`user_fk`, `sound_fk`)
VALUES
  (1, 36),
  (1, 25),
  (1, 23),
  (1, 14),
  (1, 15),
  (2, 34),
  (2, 24),
  (2, 21),
  (2, 39),
  (3, 6),
  (3, 3),
  (3, 26),
  (4, 2),
  (4, 35),
  (4, 27),
  (5, 7),
  (5, 12),
  (5, 14),
  (5, 1),
  (6, 38),
  (6, 29),
  (6, 30),
  (6, 22),
  (7, 5),
  (7, 4),
  (7, 11),
  (8, 39),
  (8, 40),
  (8, 32),
  (8, 33),
  (9, 16),
  (9, 17),
  (9, 8),
  (9, 9),
  (10, 20),
  (10, 21),
  (10, 12),
  (10, 13);