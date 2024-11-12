-- 1 ######################################################################################################################

-- CREATE TABLE school (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     address VARCHAR(255),
--     phone_number CHAR(15),
--     davlat_maktabi BOOLEAN
-- );

-- CREATE TABLE teacher (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(100),
--     phone_number CHAR(15),
--     school_id INTEGER REFERENCES school(id)
-- );

-- CREATE TABLE student (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     date_of_birth DATE,
--     gender CHAR(1),
--     school_id INTEGER REFERENCES school(id)
-- );

-- CREATE TABLE class (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     teacher_id INTEGER REFERENCES teacher(id),
--     school_id INTEGER REFERENCES school(id)
-- );

-- CREATE TABLE subject (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     class_id INTEGER REFERENCES class(id),
--     teacher_id INTEGER REFERENCES teacher(id)
-- );

-- CREATE TABLE enrollment (
--     id SERIAL PRIMARY KEY,
--     student_id INTEGER REFERENCES student(id),
--     class_id INTEGER REFERENCES class(id),
--     enrollment_date DATE DEFAULT CURRENT_DATE
-- );

-- CREATE TABLE grade (
--     id SERIAL PRIMARY KEY,
--     student_id INTEGER REFERENCES student(id),
--     subject_id INTEGER REFERENCES subject(id),
--     grade_value INTEGER,
--     date_given TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE attendance (
--     id SERIAL PRIMARY KEY,
--     student_id INTEGER REFERENCES student(id),
--     class_id INTEGER REFERENCES class(id),
--     date DATE DEFAULT CURRENT_DATE
-- );

-- 2 ######################################################################################################################


-- INSERT INTO school (name, address, phone_number, davlat_maktabi) VALUES
-- ('Oliy Ta\'lim Maktabi', 'Toshkent, Amir Temur ko\'chasi 25', '998711234567', TRUE),
-- ('Orta Maktab', 'Toshkent, Chorsu ko\'chasi 10', '998711234568', FALSE);

-- INSERT INTO teacher (first_name, last_name, email, phone_number, school_id) VALUES
-- ('Ali', 'Toxirov', 'ali@example.com', '998901234567', 1),
-- ('Toxir', 'Toxirov', 'samar@example.com', '998901234568', 2);

-- INSERT INTO student (first_name, last_name, date_of_birth, gender, school_id) VALUES
-- ('Ali', 'Toxirov', '2005-06-15', 'M', 1),
-- ('Bakir', 'Bakirov', '2006-05-22', 'F', 2);

-- INSERT INTO class (name, teacher_id, school_id) VALUES
-- ('Matematika', 1, 1),
-- ('Kimyo', 2, 2);

-- INSERT INTO subject (name, class_id, teacher_id) VALUES
-- ('Algebra', 1, 1),
-- ('Organik Kimyo', 2, 2);

-- INSERT INTO enrollment (student_id, class_id, enrollment_date) VALUES
-- (1, 1, '2024-09-01'),
-- (2, 2, '2024-09-01');

-- INSERT INTO grade (student_id, subject_id, grade_value, date_given) VALUES
-- (1, 1, 5, CURRENT_TIMESTAMP),
-- (2, 2, 4, CURRENT_TIMESTAMP);

-- INSERT INTO attendance (student_id, class_id, date) VALUES
-- (1, 1, CURRENT_DATE),
-- (2, 2, CURRENT_DATE);





-- 3 ######################################################################################################################

-- SELECT id, name, address, phone_number, TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD') AS current_date, davlat_maktabi
-- FROM school;

-- SELECT id, first_name, last_name, email, phone_number, school_id
-- FROM teacher;

-- SELECT id, first_name, last_name, TO_CHAR(date_of_birth, 'YYYY-MM-DD') AS date_of_birth, gender, school_id
-- FROM student;

-- SELECT id, name, teacher_id, school_id
-- FROM class;

-- SELECT id, name, class_id, teacher_id
-- FROM subject;

-- SELECT id, student_id, class_id, TO_CHAR(enrollment_date, 'YYYY-MM-DD') AS enrollment_date
-- FROM enrollment;

-- SELECT id, student_id, subject_id, grade_value, TO_CHAR(date_given, 'YYYY-MM-DD HH24:MI:SS') AS date_given
-- FROM grade;

-- SELECT id, student_id, class_id, TO_CHAR(date, 'YYYY-MM-DD') AS date
-- FROM attendance;


-- 4 ######################################################################################################################

-- ALTER TABLE school RENAME TO school_info;
-- ALTER TABLE teacher RENAME TO teacher_info;

-- 5 ######################################################################################################################

-- ALTER TABLE teacher_info RENAME COLUMN first_name TO teacher_first_name;
-- ALTER TABLE teacher_info RENAME COLUMN last_name TO teacher_last_name;
-- ALTER TABLE teacher_info RENAME COLUMN phone_number TO teacher_phone_number;


-- 6 ######################################################################################################################


-- ALTER TABLE school_info ADD COLUMN email VARCHAR(100);
-- ALTER TABLE school_info ADD COLUMN established_year INT;

-- ALTER TABLE teacher_info ADD COLUMN date_of_birth DATE;
-- ALTER TABLE teacher_info ADD COLUMN salary DECIMAL(10, 2);

-- 7 ######################################################################################################################



-- ALTER TABLE teacher_info DROP COLUMN salary;

-- 8 ######################################################################################################################

-- UPDATE school_info SET phone_number = '998711234999' WHERE id = 1;
-- UPDATE teacher_info SET email = 'ali.newemail@example.com' WHERE id = 1;
-- UPDATE student SET first_name = 'Bakir' WHERE id = 1;
-- UPDATE grade SET grade_value = 5 WHERE id = 2;


-- 9 ######################################################################################################################
-- DELETE FROM school_info WHERE id = 2;
-- DELETE FROM teacher_info WHERE id = 2;
-- DELETE FROM student WHERE id = 1;
-- DELETE FROM enrollment WHERE id = 1;
