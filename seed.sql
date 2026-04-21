USE edusync;
INSERT INTO roles (label) VALUES
('admin'),
('teacher'),
('student');

INSERT INTO users (firstName, lastName, emil, password, role_id) VALUES
('Ali', 'Amrani', 'ali@gmail.com', '123456', 1),
('Sara', 'Benali', 'sara@gmail.com', '123456', 2),
('Youssef', 'El Idrissi', 'youssef@gmail.com', '123456', 2),
('Imane', 'Zahra', 'imane@gmail.com', '123456', 3),
('Omar', 'Fahmi', 'omar@gmail.com', '123456', 3),
('Khadija', 'Alaoui', 'khadija@gmail.com', '123456', 3);

INSERT INTO classes (name, classroom_number) VALUES
('Math-1', 101),
('Physics-2', 202),
('Informatique-3', 303);

INSERT INTO students (dateofbirth, student_number, user_id, class_id) VALUES
('2005-03-12', 1001, 3, 1),
('2004-07-22', 1002, 1, 2),
('2003-11-05', 1003, 2, 3);


INSERT INTO courses (title, description, total_hours, user_id) VALUES
('SQL Basics', 'Learn SQL from scratch', 30, 2),
('Database Design', 'ERD + normalization', 40, 3),
('Web Development', 'HTML CSS JS basics', 50, 2);

INSERT IGNORE INTO enrollments (enrolled_at, status, student_id, course_id) VALUES
('2026-04-10', 'active', 3, 1),
('2026-04-11', 'active', 1, 3),
('2026-04-12', 'completed', 1, 2),
('2026-04-13', 'active', 3, 2),
('2026-04-14', 'active', 2, 1);