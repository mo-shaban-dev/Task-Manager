CREATE DATABASE task_manager;

-- CREATE USER TABLE ------------------------
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100), NOT NULL,
  email VARCHAR(150) UNIQUE, NOT NULL,
  password VARCHAR(255),NOT NULL,
  created_at TIMESTAMP, Default CURRENT_TIMESTAMP
)
---------------------------------------------

-- CRATE TASKS TABLE ------------------------
CREATE TABLE tasks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
   Foreign key(user_id) REFERENCES user(id),
  title VARCHAR(150), NOT Null,
  description TEXT,
  status ENUM('pending','completed') Default 'pending',
  priority ENUM('low','medium','high') Default 'medium',
  created_at TIMESTAMP, Default CURRENT_TIMESTAMP
);

---------------------------------------------