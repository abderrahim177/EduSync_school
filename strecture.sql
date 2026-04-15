CREATE DATABASE edusync;
USE edusync;
CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(225)
);

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(225),
    lastName VARCHAR(225),
    emil VARCHAR(225),
    password VARCHAR(225),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);