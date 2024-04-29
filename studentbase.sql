-- Create a new database
-- CREATE DATABASE studentnexus;

-- Switch to the new database
-- \c studentnexus;

-- Create a table for students
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    student_id VARCHAR(20) UNIQUE NOT NULL,
    gender VARCHAR(10),
    ethnicity VARCHAR(50),
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- Insert some sample data
INSERT INTO students (student_name, student_id, gender, ethnicity, email, phone)
VALUES
    ('John Doe', 'S001', 'Male', 'Caucasian', 'john.doe@example.com', '1234567890'),
    ('Jane Smith', 'S002', 'Female', 'Asian', 'jane.smith@example.com', '9876543210'),
    ('Foo Bar', 'S003', 'Male', 'African American', 'foo.bar@example.com', '5551234567'),
    ('Lorem Ipsum', 'S004', 'Female', 'Hispanic', 'lorem.ipsum@example.com', '7891011121');