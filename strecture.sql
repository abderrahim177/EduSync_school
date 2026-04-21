CREATE DATABASE edusync;

USE edusync;

CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(225) NOT NULL
);

CREATE TABLE users(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(225),
    lastName VARCHAR(225),
    emil VARCHAR(225),
    password VARCHAR(255),
    role_id int,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(225),
    classroom_number INT 
);

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dateofbirth DATE,
    student_number INT,
    user_id INT UNIQUE,
    class_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(225),
    description VARCHAR(225),
    total_hours INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE,
    status VARCHAR(50),
    student_id INT,
    course_id INT,
    UNIQUE (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);



