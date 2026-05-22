# MySQL Skills Database Mini Project

## Objective

Practice beginner SQL skills by building a small MySQL database from the command line. The goal was to get comfortable creating a database, creating a table, inserting sample records, troubleshooting syntax errors, and querying stored data.

This project supports my career path toward Help Desk, SOC Tier 1, Cybersecurity Analyst, and Data Analyst roles by building comfort with structured data, command-line work, and technical documentation.

## Project Summary

Over two days, I followed a beginner MySQL walkthrough and recreated the core steps in my own terminal. I created a small table for tracking technical skills and project goals, inserted sample data, and ran a `SELECT *` query to confirm that the data was stored correctly.

## Tools Used

- MySQL
- MySQL command-line client
- Terminal
- macOS
- GitHub for documentation

## Skills Practiced

- Creating and selecting databases
- Creating tables
- Choosing basic SQL data types
- Inserting records
- Querying data with `SELECT`
- Reading and correcting syntax errors
- Documenting technical work for a portfolio

## Commands Practiced

```sql
SHOW DATABASES;

CREATE DATABASE tech_goals_project;

USE tech_goals_project;

CREATE TABLE tech_goalsreason (
  id INT,
  skill VARCHAR(255),
  project VARCHAR(255),
  title VARCHAR(255)
);

SHOW TABLES;

DESCRIBE tech_goalsreason;

INSERT INTO tech_goalsreason
VALUES (1, 'Splunk', 'SIEM lab', 'soc analyst');

SELECT * FROM tech_goalsreason;
```

## Result

Created a small MySQL skills database, inserted a sample record, and successfully queried the table from the command line.

## What Went Wrong

I ran into MySQL syntax errors while creating the table and inserting data. The errors happened because of small command formatting issues, including punctuation and SQL structure.

## How I Fixed It

I slowed down, read the MySQL error output, checked the command structure, corrected the syntax, and reran the commands until the table and query worked correctly.

## Why This Matters

SOC analysts and data analysts both need to work with structured data. Even a small SQL project builds the foundation for querying logs, filtering results, understanding datasets, and explaining findings clearly.

## Next Steps

- Add more realistic data
- Practice `WHERE` filters
- Practice `ORDER BY`
- Practice `COUNT()` and basic aggregation
- Create a second table
- Practice `JOIN` queries
- Build a small SOC-style dataset with alerts, users, hosts, and timestamps
