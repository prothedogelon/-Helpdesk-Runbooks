# Kali Linux SQL Setup and Relational Tables Lab

## Project Context

This lab documents my process of getting SQL running inside my Kali Linux lab environment and continuing the same SQL learning path I started from NetworkChuck's beginner SQL tutorial.

The original practice was done on my MacBook Air, but I wanted to recreate the work inside Kali Linux so I could build a stronger hands-on Linux lab workflow.

## Goal

The goal of this lab was to:

- Install or access SQL tools on Kali Linux
- Troubleshoot initial SQL errors
- Confirm the SQL service was running
- Practice commands from memory
- Create a database table
- Add data into the table
- View the data
- Understand whether the database could become relational
- Add two related tables
- Confirm the tables were created
- Use generated practice data to build a larger dataset

## Lab Environment

- **Operating system:** Kali Linux
- **Database tool:** MySQL/MariaDB command-line environment
- **Learning reference:** NetworkChuck beginner SQL tutorial
- **Support tools:** ChatGPT guidance and generated sample data
- **Original comparison system:** MacBook Air

## Story of the Lab

### 1. Moving the SQL practice from Mac to Kali

I first practiced SQL on my MacBook Air. Then I attempted to recreate the same workflow on my Kali Linux machine.

This was important because Kali is the main environment I use for cybersecurity and lab work, so getting SQL running there helps connect database practice with my broader IT/SOC learning path.

### 2. Error message during setup

While trying to follow the NetworkChuck-style SQL workflow on Kali, I ran into an error message.

The error showed that the environment was not ready yet or that the SQL service/client setup needed to be checked before continuing.

The troubleshooting process mattered because it forced me to stop and verify the system instead of guessing.

### 3. Checking SQL status

After the error, I checked the status of the SQL work/environment to confirm whether the service was running correctly.

This step is similar to real troubleshooting:

1. Try the command.
2. Read the error.
3. Check the service/status.
4. Confirm the system is ready.
5. Continue testing.

### 4. SQL running on Kali

After checking the environment, SQL was running on Kali.

This confirmed that the issue was not the SQL concepts themselves, but the setup/environment state.

### 5. Practicing commands from memory

Once SQL was running, I practiced commands I remembered from the earlier tutorial.

This included basic SQL workflow commands such as:

```sql
SHOW DATABASES;
USE database_name;
SHOW TABLES;
DESCRIBE table_name;
SELECT * FROM table_name;
```

Practicing from memory helped test whether I understood the workflow instead of only copying commands.

### 6. Creating a table

I created a table to hold structured data.

This helped reinforce the idea that SQL tables are built with columns, rows, and data types.

Key concepts practiced:

- Table name
- Column names
- Data types
- Row structure
- Schema design basics

### 7. Adding data to the table

After creating the table, I inserted data into it.

This reinforced the difference between creating a table structure and actually populating it with usable records.

Example SQL concept:

```sql
INSERT INTO table_name
VALUES (...);
```

### 8. Viewing data in the table

After inserting records, I checked the data using a `SELECT` query.

Example:

```sql
SELECT *
FROM table_name;
```

This confirmed whether the data was actually stored correctly.

### 9. Asking whether the database would be relational

After creating the first table, I asked whether the database would be relational.

The key lesson:

> A database becomes relational when tables are connected through shared keys, such as primary keys and foreign keys.

One table alone is not enough to fully practice relationships. Multiple connected tables are needed.

### 10. Adding two new related tables

To make the project more relational, I added two new tables connected to the original table.

The goal was to understand how one main table can connect to supporting tables.

Relational concepts practiced:

- Parent table
- Child table
- Shared IDs
- One-to-many relationships
- How tables connect through key values

### 11. Confirming the tables

After adding the two new tables, I confirmed they existed by checking the table list.

Example:

```sql
SHOW TABLES;
```

This confirmed that the database now had multiple tables and could support relational practice.

### 12. Using generated data

I used generated sample data from ChatGPT to populate the tables.

This made the project more realistic because larger datasets allow better practice with filtering, sorting, and eventually joins.

## Key SQL Concepts Practiced

| Concept | What It Means |
|---|---|
| Database | A container for related tables |
| Table | A structured set of rows and columns |
| Row | One record in a table |
| Column | A field/category of data |
| Data type | The kind of value allowed in a column |
| `INSERT INTO` | Adds new records |
| `SELECT` | Reads data from a table |
| `DESCRIBE` | Shows table structure |
| `SHOW TABLES` | Lists tables in the database |
| Primary key | A unique ID for records |
| Foreign key | A value that links one table to another |
| Relational database | A database where tables connect through keys |

## Troubleshooting Lessons

This lab was not only about SQL syntax. It also included Linux troubleshooting habits:

- Read the error message
- Check service status
- Confirm the correct environment
- Verify the database is running
- Test one command at a time
- Confirm results before moving forward

## Analyst Connection

This lab supports IT, SOC, and data analyst growth because analysts often work with structured data.

Relevant job skills include:

- Querying structured records
- Understanding table design
- Troubleshooting command-line errors
- Working in Linux
- Building repeatable lab documentation
- Preparing for log, ticket, and asset data analysis

## Screenshots to Add Later

The screenshots for this lab should be added in this order:

```text
screenshots/01-original-mac-sql-work.png
screenshots/02-kali-sql-error-message.png
screenshots/03-checking-sql-status.png
screenshots/04-sql-running-on-kali.png
screenshots/05-practicing-remembered-commands.png
screenshots/06-created-first-table.png
screenshots/07-adding-data-to-table.png
screenshots/08-data-visible-in-table.png
screenshots/09-relational-database-question.png
screenshots/10-added-two-related-tables.png
screenshots/11-tables-confirmed.png
screenshots/12-generated-data-from-chatgpt.png
```

## What I Learned

1. Moving a lab from one system to another helps prove I understand the workflow.
2. Kali Linux can be used as a serious practice environment for SQL and analyst work.
3. Errors are part of the lab and should be documented, not hidden.
4. One table is useful, but multiple related tables are better for understanding relational databases.
5. Generated data helps create realistic practice datasets.
6. Good documentation turns a small practice session into a portfolio-worthy project.

## Next Steps

- Add screenshots to the matching screenshot folder
- Add the actual SQL commands used in a `.sql` file
- Practice `JOIN` queries between the related tables
- Add primary keys and foreign keys
- Create a short diagram showing how the tables connect
- Build one query that answers a real analyst-style question
