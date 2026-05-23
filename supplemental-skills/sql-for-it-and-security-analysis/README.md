# SQL for IT and Security Analysis

This folder contains supplemental SQL practice that supports IT support, SOC analysis, and data investigation skills.

This work is kept separate from the main Help Desk runbooks so the repository stays organized and professional.

## Purpose

This started as beginner SQL practice based on NetworkChuck's SQL beginner tutorial. The original work focused on creating a database, creating a table, inserting rows, viewing data, fixing syntax errors, and learning the difference between `INSERT` and `UPDATE`.

After completing the tutorial-based portion, I began expanding the same table into a personal career skills tracker. Anything added after the NetworkChuck section is based on my own new practice, planning, and learning.

## Skills Practiced So Far

- Creating a database
- Creating a table
- Inserting records
- Viewing table data with `SELECT`
- Checking table structure with `DESCRIBE`
- Using `WHERE` to target specific rows
- Learning the difference between `INSERT` and `UPDATE`
- Recovering after an `UPDATE` mistake
- Expanding a table with additional columns
- Documenting mistakes and fixes

## Career Connection

SQL supports:

- Help desk reporting
- Ticket trend analysis
- Asset/user audits
- SOC log review
- Security investigations
- Data analyst fundamentals
- Career planning and skills tracking

## Files

- [`sql/mysql_skills_database.sql`](sql/mysql_skills_database.sql) — current SQL script for the skills tracker table
- [`notes/sql-learning-log-networkchuck-coddy.md`](notes/sql-learning-log-networkchuck-coddy.md) — beginner SQL learning log with mistakes and fixes
- [`notes/sql-update-insert-recovery-lab.md`](notes/sql-update-insert-recovery-lab.md) — UPDATE/INSERT recovery note showing how I diagnosed and recovered from a bad update

## Work Completed So Far

### 1. Beginner SQL Practice

Created a beginner MySQL table and practiced basic SQL commands such as `CREATE DATABASE`, `USE`, `CREATE TABLE`, `INSERT INTO`, `SELECT`, and `DESCRIBE`.

### 2. Update / Insert Recovery Practice

Documented a mistake where an `UPDATE` command was run without a `WHERE` clause. The work shows what went wrong, why it happened, and how the table was rebuilt.

### 3. Career Skills Tracker Expansion

Expanded the table into a 25-row career skills tracker. The table currently includes fields for skills, projects, target roles, rating, assumed training cost, validation source, practice platform, estimated entry-level salary, priority, status, tools needed, and timeframe.

This section is still in progress. The table is being used as a practice dataset before moving into deeper analysis queries.

## Current Dataset Columns

```text
id
skill
project
title
rating
assumed_training_cost
knowledge_validation
verification_platform
entry_level_salary
priority
status
tools_needed
timeframe
```

## Notes on Assumptions

- `entry_level_salary` values are planning estimates, not guaranteed salaries.
- `assumed_training_cost` values are low-cost learning estimates, not official prices.
- `rating` is a self-assessed learning confidence score used for planning.
- Some projects listed are planned future work, not completed projects yet.

## Next Steps

- Practice reading the wider table with smaller `SELECT` statements
- Run simple analysis queries using `COUNT`, `AVG`, `SUM`, `GROUP BY`, and `ORDER BY`
- Add screenshots of actual query results after running them locally
- Create a short write-up explaining what the query results mean
- Later, practice `JOIN` and table normalization
