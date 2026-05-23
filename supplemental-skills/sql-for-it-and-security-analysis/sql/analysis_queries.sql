-- Career Skills Tracker Analysis Queries
-- Purpose: turn the SQL tracker from a data-entry table into an analysis project.
-- Each query answers a specific planning question.

USE tech_goals_project;

-- Question 1: Which target role has the most projects?
SELECT title, COUNT(*) AS project_count
FROM tech_goalsasanoob
GROUP BY title
ORDER BY project_count DESC;

-- Question 2: Which target role has the strongest average rating?
SELECT title, ROUND(AVG(rating), 2) AS avg_rating
FROM tech_goalsasanoob
GROUP BY title
ORDER BY avg_rating DESC;

-- Question 3: Which projects are high priority right now?
SELECT id, skill, project, title, rating, priority, status
FROM tech_goalsasanoob
WHERE priority = 'High'
ORDER BY title, rating DESC;

-- Question 4: Which projects are still planned and what tools do they need?
SELECT id, skill, project, title, timeframe, tools_needed
FROM tech_goalsasanoob
WHERE status = 'Planned'
ORDER BY title, timeframe;

-- Question 5: Which projects are low-cost and high-value based on current assumptions?
SELECT id, skill, project, title, rating, assumed_training_cost, entry_level_salary
FROM tech_goalsasanoob
WHERE rating >= 3.0
ORDER BY assumed_training_cost ASC, entry_level_salary DESC;

-- Question 6: What is the estimated average entry-level salary by target role?
SELECT title, ROUND(AVG(entry_level_salary), 2) AS avg_entry_level_salary
FROM tech_goalsasanoob
GROUP BY title
ORDER BY avg_entry_level_salary DESC;

-- Question 7: Which tools show up across the roadmap?
SELECT tools_needed, COUNT(*) AS project_count
FROM tech_goalsasanoob
GROUP BY tools_needed
ORDER BY project_count DESC;

-- Question 8: What does the full role summary look like?
SELECT
  title,
  COUNT(*) AS project_count,
  ROUND(AVG(rating), 2) AS avg_rating,
  ROUND(AVG(entry_level_salary), 2) AS avg_entry_level_salary,
  SUM(assumed_training_cost) AS total_assumed_training_cost
FROM tech_goalsasanoob
GROUP BY title
ORDER BY project_count DESC;

-- Question 9: Which projects need more practice?
SELECT id, skill, project, title, rating, status
FROM tech_goalsasanoob
WHERE status = 'Needs Practice' OR rating < 3.0
ORDER BY rating ASC;

-- Question 10: What is the cleanest view for posting screenshots?
SELECT id, skill, project, title, rating, priority, status
FROM tech_goalsasanoob
ORDER BY id;
