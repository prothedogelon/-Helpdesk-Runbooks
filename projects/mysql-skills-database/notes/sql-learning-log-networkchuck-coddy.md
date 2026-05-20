# SQL Learning Log: NetworkChuck Tutorial + Coddy Practice

## Project Context

This project documents my beginner SQL practice using MySQL from the command line. I used NetworkChuck's beginner SQL tutorial, **"you need to learn SQL RIGHT NOW!! (SQL Tutorial for Beginners)"**, as my walkthrough, then used Coddy-style SQL practice questions to test whether I understood the concepts outside of the video.

My goal is to build SQL fundamentals for future SOC Analyst and Data Analyst work, especially querying structured data, filtering results, correcting mistakes, and documenting technical troubleshooting.

## Platforms Used

- **NetworkChuck YouTube tutorial**: Guided walkthrough for MySQL basics
- **MySQL command-line monitor**: Hands-on SQL execution
- **Coddy SQL exercises**: Extra practice to test SELECT, WHERE, OR, AND, and filtering logic
- **ChatGPT**: Troubleshooting support and documentation help
- **GitHub**: Portfolio documentation

## Skills Practiced

- Creating a database
- Selecting a database with `USE`
- Creating a table with `CREATE TABLE`
- Checking table structure with `DESCRIBE`
- Inserting rows with `INSERT INTO`
- Querying all data with `SELECT *`
- Selecting specific columns
- Filtering with `WHERE`
- Understanding `AND` vs `OR`
- Safely deleting rows with `DELETE ... WHERE`
- Reading SQL error messages
- Fixing syntax errors

## Table Structure

The table used four columns:

```sql
id INT,
skill VARCHAR(255),
project VARCHAR(255),
title VARCHAR(255)
```

The goal was to connect technical skills to small projects and target job titles.

## Example Data

```sql
INSERT INTO tech_goalsasanoob (id, skill, project, title)
VALUES
(1, 'splunk', 'siem lab', 'soc analyst'),
(2, 'sql', 'target workflow', 'data analyst'),
(3, 'wireshark', 'packet analysis lab', 'soc analyst'),
(4, 'splunk', 'failed login search', 'soc analyst'),
(5, 'linux', 'command-line practice', 'help desk'),
(6, 'excel', 'kpi tracker', 'data analyst'),
(7, 'networking', 'subnetting practice', 'networking technician'),
(8, 'ticketing', 'password reset documentation', 'help desk'),
(9, 'active directory', 'user account troubleshooting', 'help desk'),
(10, 'security logs', 'login event review', 'soc analyst');
```

## Mistake 1: Column Count Did Not Match

### Error

```text
ERROR 1136 (21S01): Column count doesn't match value count at row 5
```

### What Caused It

I missed commas between values in some rows.

Wrong example:

```sql
(6, 'excel' 'kpi tracker', 'data analyst')
```

MySQL treated `'excel' 'kpi tracker'` as one value instead of two separate values.

### Fix

Correct version:

```sql
(6, 'excel', 'kpi tracker', 'data analyst')
```

## Mistake 2: Table Name Typo During DELETE

### Error

```text
ERROR 1064 (42000): You have an error in your SQL syntax
```

### What Caused It

I typed the table name incorrectly:

```sql
DELETE FROM tech-goalsasanoob
WHERE id = 6;
```

The dash caused MySQL to read the name incorrectly.

### Fix

Use the correct table name with underscores:

```sql
DELETE FROM tech_goalsasanoob
WHERE id = 6;
```

## Mistake 3: Using AND When I Needed OR / IN

### Problem

I tried to find rows where the same column had two different values at the same time.

Wrong example:

```sql
SELECT DISTINCT project, skill
FROM tech_goalsasanoob
WHERE project = 'siem lab' AND project = 'kpi tracker';
```

This returned an empty set because one row cannot have the project value `siem lab` and `kpi tracker` at the same time.

### Fix

Use `OR`:

```sql
SELECT DISTINCT project, skill
FROM tech_goalsasanoob
WHERE project = 'siem lab'
   OR project = 'kpi tracker';
```

Or use `IN`:

```sql
SELECT DISTINCT project, skill
FROM tech_goalsasanoob
WHERE project IN ('siem lab', 'kpi tracker');
```

## Mistake 4: Using AND to Select Columns

### Problem

I tried to select two columns using `AND`.

Wrong example:

```sql
SELECT skill AND title
FROM tech_goalsasanoob;
```

### Fix

Use a comma to select multiple columns:

```sql
SELECT skill, title
FROM tech_goalsasanoob;
```

## Important Lesson: Preview Before Deleting

Before deleting a row, I should preview it first:

```sql
SELECT *
FROM tech_goalsasanoob
WHERE id = 6;
```

Then delete with a `WHERE` clause:

```sql
DELETE FROM tech_goalsasanoob
WHERE id = 6;
```

Then verify:

```sql
SELECT *
FROM tech_goalsasanoob;
```

Never run this unless the goal is to delete every row:

```sql
DELETE FROM tech_goalsasanoob;
```

## Screenshots to Add

Recommended screenshot files:

```text
screenshots/01-table-schema-and-first-insert.png
screenshots/02-column-count-error.png
screenshots/03-delete-with-where-verification.png
screenshots/04-select-where-or-in-practice.png
```

## What I Learned

1. SQL is strict about commas, table names, and query order.
2. Error messages are useful when I slow down and read them.
3. `WHERE` controls which rows are affected.
4. `AND` means both conditions must be true.
5. `OR` means either condition can be true.
6. `IN` is cleaner when checking one column against multiple possible values.
7. `DELETE` should always be used carefully with a `WHERE` clause.
8. Portfolio projects look stronger when they show mistakes and fixes, not just clean final commands.

## Analyst Connection

SOC and data analysts work with structured data, logs, alerts, users, hosts, tickets, and reports. This project is small, but it builds the same foundation: query the data, filter the results, validate the output, and document what happened.

## Next Steps

- Add more clean rows back into the table
- Practice `WHERE`, `OR`, `AND`, and `IN`
- Practice `ORDER BY`
- Practice `UPDATE` and `SET`
- Practice `ALTER TABLE`
- Build a second table and practice `JOIN`
