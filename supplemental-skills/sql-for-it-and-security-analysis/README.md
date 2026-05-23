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
- Using `ALTER TABLE` to expand a dataset
- Creating SQL views for easier reading
- Using `GROUP BY`, `COUNT`, `AVG`, `SUM`, and `ORDER BY` for analysis
- Documenting mistakes, fixes, and project growth

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

- [`sql/mysql_skills_database.sql`](sql/mysql_skills_database.sql) — MySQL career skills tracker setup, dataset, views, and analysis queries
- [`sql/analysis_queries.sql`](sql/analysis_queries.sql) — focused analysis queries with plain-English question labels
- [`notes/sql-learning-log-networkchuck-coddy.md`](notes/sql-learning-log-networkchuck-coddy.md) — beginner SQL learning log with mistakes and fixes
- [`notes/sql-update-insert-recovery-lab.md`](notes/sql-update-insert-recovery-lab.md) — UPDATE/INSERT recovery lab showing how I diagnosed and recovered from a bad update

## Labs Included

### 1. Beginner SQL Learning Log

Covers basic SQL setup, table creation, inserting data, filtering with `WHERE`, and understanding `AND`, `OR`, and `IN`.

### 2. SQL Update, Insert, and Recovery Lab

Documents a realistic mistake: running `UPDATE` without a `WHERE` clause, accidentally changing all rows, then rebuilding the table and learning the difference between `INSERT` and `UPDATE`.

### 3. Career Skills Tracker Analysis

Expands the original SQL table into a 25-row career skills tracker with fields for skill, project, target role, rating, assumed training cost, validation source, practice platform, estimated entry-level salary, priority, status, tools needed, and timeframe.

This turns the project from simple SQL practice into a small analysis dataset that can answer questions such as:

- Which target role has the most projects?
- Which role has the strongest average skill rating?
- Which projects are high priority?
- Which projects are still planned?
- Which projects are low-cost and high-value based on current assumptions?
- Which tools show up most often across the roadmap?

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

## Next Steps

- Practice `JOIN`
- Normalize the table into separate skills, projects, roles, and tools tables
- Add real job-market salary data later using Indeed or ZipRecruiter research
- Build a small dashboard from the SQL output
- Create a short write-up interpreting the query results
