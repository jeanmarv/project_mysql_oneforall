DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
  plan_id INT AUTO_INCREMENT PRIMARY KEY,
  plan_type VARCHAR(30) NOT NULL,
  plan_prices DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(20) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT NOT NULL,
  sub_date DATE NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
	artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.albums(
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  album_name VARCHAR(50) NOT NULL, 
  artist_id INT NOT NULL,
  album_release INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
  song_id INT AUTO_INCREMENT PRIMARY KEY,
  song_name VARCHAR(50) NOT NULL, 
  album_id INT NOT NULL,
  song_length INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums(album_id)
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.followed(
	  user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.history(
    history_id INT NOT NULL AUTO_INCREMENT,
    played_date DATETIME,
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    CONSTRAINT PRIMARY KEY(history_id ,song_id, user_id)
) engine = InnoDB;

