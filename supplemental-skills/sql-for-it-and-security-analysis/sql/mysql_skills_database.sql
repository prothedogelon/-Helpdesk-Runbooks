-- MySQL Skills Database Mini Project
-- Purpose: Practice creating a database, table, inserting records, and querying data.

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS tech_goals_project;

USE tech_goals_project;

DROP TABLE IF EXISTS tech_goalsreason;

CREATE TABLE tech_goalsreason (
  id INT,
  skill VARCHAR(255),
  project VARCHAR(255),
  title VARCHAR(255)
);

SHOW TABLES;

DESCRIBE tech_goalsreason;

INSERT INTO tech_goalsreason
VALUES
  (1, 'Splunk', 'SIEM lab', 'SOC Analyst');

SELECT * FROM tech_goalsreason;

-- Next practice ideas:
-- 1. Add more rows for MySQL, Wireshark, Linux, and Excel.
-- 2. Use WHERE to filter by skill.
-- 3. Use ORDER BY to sort results.
-- 4. Add a second table and practice JOIN queries.
