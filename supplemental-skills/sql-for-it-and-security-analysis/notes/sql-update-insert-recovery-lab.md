# SQL Update, Insert, and Recovery Lab

## Project Context

This lab continues my beginner SQL practice based on NetworkChuck's SQL beginner tutorial. The goal was to move past simple `SELECT` queries and practice changing table data with `UPDATE`, adding new rows with `INSERT`, and recovering after a mistake.

This is useful for IT support, SOC, and data analysis work because analysts need to understand how data changes, how mistakes affect records, and how to verify results before and after running commands.

## Skills Practiced

- Viewing table contents with `SELECT *`
- Checking table structure with `DESCRIBE`
- Filtering records with `WHERE`
- Updating rows with `UPDATE ... SET ... WHERE`
- Adding new rows with `INSERT INTO`
- Understanding the danger of `UPDATE` without `WHERE`
- Recovering by rebuilding table data
- Verifying changes after commands

## Starting Table

The table contained technical skills, projects, and target job titles.

Example fields:

```sql
id INT,
skill VARCHAR(255),
project VARCHAR(255),
title VARCHAR(255)
```

The table included rows for skills like SQL, Wireshark, Splunk, Linux, Excel, networking, ticketing, Active Directory, and security logs.

## What Went Wrong

I tried to update one row, but I forgot the `WHERE` clause.

Problem command:

```sql
UPDATE tech_goalsasanoob
SET id = 11,
    skill = 'splunk',
    project = 'dashboard',
    title = 'soc analyst';
```

Because there was no `WHERE` clause, MySQL updated every row in the table.

Result:

```text
Rows matched: 10
Changed: 10
Warnings: 0
```

This changed all records to the same values.

## Why This Was a Serious Mistake

The `id` column was also changed to `11` for every row. That meant I could not safely fix the original rows one by one using `WHERE id = 1`, `WHERE id = 2`, and so on because the original IDs were gone.

## Recovery Method

The clean fix was to rebuild the table data.

I used the current table structure, then reinserted the intended rows.

Example recovery insert:

```sql
INSERT INTO tech_goalsasanoob
VALUES
(1, 'sql', 'sql filtering workflow', 'data analyst'),
(2, 'sql', 'target workflow', 'data analyst'),
(3, 'wireshark', 'packet analysis lab', 'soc analyst'),
(4, 'splunk', 'failed login search', 'soc analyst'),
(5, 'linux', 'command-line practice', 'help desk'),
(6, 'excel', 'kpi tracker', 'data analyst'),
(7, 'networking', 'subnetting practice', 'networking technician'),
(8, 'ticketing', 'password reset documentation', 'help desk'),
(9, 'active directory', 'user account troubleshooting', 'help desk'),
(10, 'security logs', 'login event review', 'soc analyst'),
(11, 'splunk', 'dashboard', 'soc analyst');
```

Then I verified with:

```sql
SELECT *
FROM tech_goalsasanoob
ORDER BY id;
```

## What I Actually Wanted To Do

I was trying to add a new row, not change existing rows.

Correct command:

```sql
INSERT INTO tech_goalsasanoob
VALUES (11, 'splunk', 'dashboard', 'soc analyst');
```

Then I practiced adding more rows:

```sql
INSERT INTO tech_goalsasanoob
VALUES
(12, 'tableau', 'data literacy', 'data analyst'),
(13, 'tableau', 'visual design', 'data analyst');
```

## Correct Use of UPDATE

Use `UPDATE` when changing an existing row.

Example:

```sql
UPDATE tech_goalsasanoob
SET skill = 'tableau'
WHERE id = 12;
```

This is safer because the `WHERE` clause limits the change to one matching row.

## SQL Command Rule

| Goal | SQL Command |
|---|---|
| Add a new row | `INSERT INTO` |
| Change an existing row | `UPDATE ... SET ... WHERE ...` |
| Remove a row | `DELETE ... WHERE ...` |
| Clear the whole table | `TRUNCATE TABLE` |
| Check results | `SELECT * FROM table_name` |

## Safe Habit

Before every `UPDATE`, first run a `SELECT` using the same `WHERE` clause.

Example:

```sql
SELECT *
FROM tech_goalsasanoob
WHERE id = 12;
```

Then run:

```sql
UPDATE tech_goalsasanoob
SET skill = 'tableau'
WHERE id = 12;
```

Then verify:

```sql
SELECT *
FROM tech_goalsasanoob
WHERE id = 12;
```

## Lesson Learned

Mistakes happen in real technical work. The professional part is noticing the error, reading the output, documenting what happened, recovering cleanly, and building a safer habit for next time.

The biggest lesson from this lab:

> Never run `UPDATE` or `DELETE` without first confirming the `WHERE` clause.

## Portfolio Value

This lab shows:

- Basic SQL command-line practice
- Troubleshooting after a bad command
- Recovery thinking
- Documentation discipline
- Safer data-handling habits
- Analyst mindset: verify before and after changes
