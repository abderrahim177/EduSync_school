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

CREATE TABLE classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(225),
    classroom_number INT 
);
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    dateofbirth DATE ,
    student_number INT ,
    user_id INT ,
    classe_id  INT ,
    Foreign Key (user_id) REFERENCES users(id),
    Foreign Key (classe_id) REFERENCES classes(id)
);