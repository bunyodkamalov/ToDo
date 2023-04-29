-- TO DO app DATABASE STRUCTURE 

-- Creating database
CREATE DATABASE big_project;
USE big_project;

-- Create task table
CREATE TABLE IF NOT EXISTS tasks (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR (128) NOT NULL,
    info VARCHAR(512),
    parent_id INT,
    is_done SMALLINT DEFAULT 0,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (task, info, parent_id) VALUES
    ("Do homework", "I have a lot of tasks to do", 0),
    ("TASK1", "", 1),
    ("TASK2", "", 1),
    ("TASK3", "", 1);

INSERT INTO tasks (task, parent_id) VALUES
    ("DOWNLOAD CS.GO", 0),
    ("Update system", 0);

INSERT INTO tasks (task, info, parent_id, is_done) VALUES
    ("Prepare OS", "Install all additional sowt on it", 0, 1),
    ("Install office app", "Download it from microsoft.com", 7, 1),
    ("install google chrome", "Google.com", 7, 1);



