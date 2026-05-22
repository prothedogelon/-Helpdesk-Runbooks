# SQL for IT and Security Analysis

This folder contains supplemental SQL practice that supports IT support, SOC analysis, and data investigation skills.

This work is kept separate from the main Help Desk runbooks so the repository stays organized and professional.

## Why SQL Belongs Here

SQL is not a Help Desk runbook by itself, but it supports technical roles that involve structured data, ticket reporting, log review, asset inventory, and analyst workflows.

## Skills Practiced

- Creating databases and tables
- Inserting records
- Querying tables with `SELECT`
- Filtering with `WHERE`
- Using `AND`, `OR`, and `IN`
- Practicing `UPDATE`, `INSERT`, and recovery steps
- Reading SQL errors
- Correcting syntax mistakes
- Documenting mistakes and fixes

## Career Connection

SQL supports:

- Help desk reporting
- Ticket trend analysis
- Asset/user audits
- SOC log review
- Security investigations
- Data analyst fundamentals

## Files

- [`sql/mysql_skills_database.sql`](sql/mysql_skills_database.sql) — MySQL practice script
- [`notes/sql-learning-log-networkchuck-coddy.md`](notes/sql-learning-log-networkchuck-coddy.md) — beginner SQL learning log with mistakes and fixes
- [`notes/sql-update-insert-recovery-lab.md`](notes/sql-update-insert-recovery-lab.md) — UPDATE/INSERT recovery lab showing how I diagnosed and recovered from a bad update

## Labs Included

### 1. Beginner SQL Learning Log

Covers basic SQL setup, table creation, inserting data, filtering with `WHERE`, and understanding `AND`, `OR`, and `IN`.

### 2. SQL Update, Insert, and Recovery Lab

Documents a realistic mistake: running `UPDATE` without a `WHERE` clause, accidentally changing all rows, then rebuilding the table and learning the difference between `INSERT` and `UPDATE`.

## Next Steps

- Practice `ORDER BY`
- Practice `DELETE ... WHERE`
- Practice `ALTER TABLE`
- Practice `JOIN`
- Create a small IT ticket reporting database project
