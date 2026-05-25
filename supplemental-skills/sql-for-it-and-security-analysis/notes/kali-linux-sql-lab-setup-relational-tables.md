# Kali Linux SQL Lab Setup and Relational Tables

## Project Context

This lab documents my process of getting SQL running inside my Kali Linux lab environment after first practicing SQL from my Mac/MacBook setup while following NetworkChuck's beginner SQL tutorial.

The goal was to move the SQL practice into a Linux lab, troubleshoot startup errors, confirm the database service was running, create tables, insert data, and begin understanding how relational tables work.

## Why This Lab Matters

This lab connects SQL practice to a real Linux command-line environment. Instead of only following along from the original tutorial setup, I practiced installing/running SQL in my own Kali lab and troubleshooting issues as they came up.

This supports future Help Desk, SOC, and data analysis work because technical roles often require working across different operating systems, reading service status messages, fixing errors, and validating that a tool is actually running.

## Lab Environment

- **Operating system:** Kali Linux
- **Database:** MariaDB / MySQL-style command-line workflow
- **Reference tutorial:** NetworkChuck beginner SQL tutorial
- **Original practice machine:** Mac/MacBook Air
- **New practice machine:** Kali Linux lab

## Lab Story

### 1. Attempted to follow the NetworkChuck SQL setup on Kali

I started by trying to recreate the SQL workflow from the NetworkChuck tutorial inside my Kali Linux machine.

The original walkthrough was based on a different setup, so I had to adjust the steps for my Kali lab.

### 2. Hit an error message

I received an error while trying to start or access SQL.

Instead of skipping it, I treated the error as part of the lab. The key troubleshooting step was to check whether the SQL/MariaDB service was installed, running, and available from the terminal.

### 3. Checked service status

I checked the status of the database service to confirm whether SQL was actually running.

Example Linux commands used or relevant to this lab:

```bash
sudo systemctl status mariadb
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

### 4. SQL started running on Kali

After checking the service and correcting the issue, SQL was running in the Kali lab.

At that point, I was able to enter the SQL/MariaDB command-line environment and continue practicing.

Example command:

```bash
sudo mariadb
```

or depending on setup:

```bash
mysql -u root -p
```

## Commands Practiced

Once SQL was running, I practiced commands I remembered from the tutorial and earlier work.

Common commands used:

```sql
SHOW DATABASES;
CREATE DATABASE lc_sqlproject;
USE lc_sqlproject;
SHOW TABLES;
DESCRIBE table_name;
SELECT * FROM table_name;
```

## Table Creation

I created a main table for the lab.

The main table was related to a tax department concept.

Example structure:

```sql
CREATE TABLE tax_dept (
  id INT,
  employee_name VARCHAR(100),
  department VARCHAR(100),
  role_title VARCHAR(100)
);
```

## Adding Data

After creating the table, I inserted data into it.

Example pattern:

```sql
INSERT INTO tax_dept
VALUES
(1, 'Employee One', 'Tax Department', 'Tax Analyst'),
(2, 'Employee Two', 'Tax Department', 'Auditor');
```

Then I verified the table contents:

```sql
SELECT * FROM tax_dept;
```

## Relational Database Question

I asked whether the work would be relational.

The answer: it becomes relational when multiple tables connect through matching keys.

For example:

- `tax_dept` can store department or employee records
- A second table can store cases/tax records
- A third table can store payments, audits, or filings

The tables become relational when they share a common ID, such as:

```sql
department_id
employee_id
taxpayer_id
case_id
```

## Added Two More Tables

To practice relationships, I added two more tables connected to the main table.

Example related tables:

```sql
CREATE TABLE taxpayers (
  taxpayer_id INT,
  taxpayer_name VARCHAR(100),
  tax_dept_id INT
);
```

```sql
CREATE TABLE tax_cases (
  case_id INT,
  taxpayer_id INT,
  case_type VARCHAR(100),
  case_status VARCHAR(100)
);
```

## Relationship Concept

The relationship can work like this:

```text
tax_dept.id → taxpayers.tax_dept_id
taxpayers.taxpayer_id → tax_cases.taxpayer_id
```

That means:

- One tax department can handle many taxpayers
- One taxpayer can have many tax cases
- The records can be connected later with `JOIN`

## Table Confirmation

After creating the tables, I confirmed they existed with:

```sql
SHOW TABLES;
```

And checked structure with:

```sql
DESCRIBE tax_dept;
DESCRIBE taxpayers;
DESCRIBE tax_cases;
```

## Generated Data

I generated practice data with ChatGPT to populate the tables. This helped create enough rows to practice realistic queries instead of only using one or two records.

The purpose of using generated data was to practice:

- Inserting multiple rows
- Reading tables
- Filtering records
- Understanding how related tables connect
- Preparing for future `JOIN` practice

## What I Learned

1. SQL practice can move from Mac to Kali Linux, but the setup steps may differ.
2. Service status matters; if the database service is not running, SQL commands will fail.
3. MariaDB can be used for MySQL-style beginner SQL practice.
4. Creating a table is only the first step; data must be inserted and verified.
5. A database becomes relational when tables share keys.
6. Multiple tables are better for practicing real-world data structure.
7. Generated data is useful for query practice, as long as it is clearly labeled as lab data.

## Next Steps

- Add primary keys to each table
- Add foreign keys between related tables
- Practice `JOIN` queries
- Practice filtering taxpayers and cases by status
- Practice updating one record safely with `WHERE`
- Document screenshots for each stage of the lab

## Portfolio Value

This lab shows:

- Linux command-line practice
- SQL/MariaDB service troubleshooting
- Database creation
- Table creation
- Data insertion
- Relational table planning
- Documentation of mistakes and progress
- Transfer of learning from tutorial to personal lab environment
