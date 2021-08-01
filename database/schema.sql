CREATE DATABASE IF NOT EXISTS blog;

USE blog;

CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL,
  username VARCHAR(31) NOT NULL,
  password TEXT NOT NULL,
  salt TEXT NOT NULL,
  email VARCHAR(255) NOT NULL,
  firstName VARCHAR(30) DEFAULT NULL,
  lastName VARCHAR(30) DEFAULT NULL,

  PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS posts (
  id INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  title VARCHAR(127) NOT NULL,
  filPath VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS comments (
  id INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  postID INT NOT NULL,
  content VARCHAR(255),
  likes INT,
  dislikes INT,
  PRIMARY KEY (id)
);

ALTER TABLE posts ADD INDEX title;