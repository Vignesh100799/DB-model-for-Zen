SHOW DATABASES;

-- Switch to the guvizen database
USE guvizen;

-- Create tables
CREATE TABLE Mentors (
    mentor_id INT PRIMARY KEY,
    mentor_name VARCHAR(20),
    mentor_email VARCHAR(30)
);

CREATE TABLE Batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(30),
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES Mentors(mentor_id)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20),
    student_email VARCHAR(50),
    join_date DATE,
    end_date DATE,
    batch_id INT,
    FOREIGN KEY (batch_id) REFERENCES Batches(batch_id)
);

-- Insert data into Mentors table
INSERT INTO Mentors (mentor_id, mentor_name, mentor_email)
VALUES
     (1, 'John Doe', 'john.doe@email.com'),
    (2, 'Jane Smith', 'jane.smith@email.com'),
    (3, 'David Johnson', 'david.johnson@email.com'),
    (4, 'Emily Brown', 'emily.brown@email.com'),
    (5, 'Michael Davis', 'michael.davis@email.com');

-- Insert data into Batches table
INSERT INTO Batches (batch_id, batch_name, mentor_id)
VALUES
	(101, 'Batch A', 1),
    (102, 'Batch B', 2),
    (103, 'Batch C', 1),
    (104, 'Batch D', 2);
	(105, 'Batch C', 3),
    (106, 'Batch D', 4),
    (107, 'Batch E', 5);
-- Insert data into Students table
INSERT INTO Student (student_id, student_name, student_email, join_date, end_date, batch_id)
VALUES
    (1001, 'Alice Johnson', 'alice@email.com', '2023-01-01', '2023-12-31', 101),
    (1002, 'Bob Williams', 'bob@email.com', '2023-02-01', '2023-11-30', 102),
    (1003, 'Charlie Brown', 'charlie@email.com', '2023-03-01', '2023-10-31', 103),
    (1004, 'Diana Miller', 'diana@email.com', '2023-04-01', '2023-09-30', 104),
    (1005, 'Eva Davis', 'eva@email.com', '2023-05-01', '2023-08-31', 101),
    (1006, 'Frank Wilson', 'frank@email.com', '2023-06-01', '2023-07-31', 102),
    (1007, 'Grace Smith', 'grace@email.com', '2023-07-01', '2023-06-30', 103),
    (1008, 'Harry Jones', 'harry@email.com', '2023-08-01', '2023-05-31', 104),
    (1009, 'Isabel Lee', 'isabel@email.com', '2023-09-01', '2023-04-30', 101),
    (1010, 'Jack Robinson', 'jack@email.com', '2023-10-01', '2023-03-31', 102);
	
DESCRIBE Student;

select * from batches;

