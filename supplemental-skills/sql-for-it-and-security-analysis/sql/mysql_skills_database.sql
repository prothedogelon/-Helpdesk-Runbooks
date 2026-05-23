-- MySQL Career Skills Tracker
-- Purpose: practice SQL while tracking Help Desk, SOC, and Data Analyst learning projects.
-- Truth note:
--   The NetworkChuck tutorial portion is complete.
--   Anything added after that is new practice/planning, not a claim of completed real-world work.
--   Salary and training-cost values are planning estimates, not guaranteed facts.

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS tech_goals_project;
USE tech_goals_project;

DROP TABLE IF EXISTS tech_goalsasanoob;

CREATE TABLE tech_goalsasanoob (
  id INT,
  skill VARCHAR(255),
  project VARCHAR(255),
  title VARCHAR(255),
  rating DECIMAL(2,1),
  assumed_training_cost DECIMAL(8,2),
  knowledge_validation VARCHAR(255),
  verification_platform VARCHAR(255),
  entry_level_salary DECIMAL(10,2),
  priority VARCHAR(50),
  status VARCHAR(50),
  tools_needed VARCHAR(255),
  timeframe VARCHAR(50)
);

DESCRIBE tech_goalsasanoob;

INSERT INTO tech_goalsasanoob
(id, skill, project, title, rating, assumed_training_cost, knowledge_validation, verification_platform, entry_level_salary, priority, status, tools_needed, timeframe)
VALUES
(1, 'sql', 'sql filtering workflow', 'data analyst', 3.0, 0.00, 'HackerRank SQL / DataCamp SQL', 'MySQL Lab', 55000.00, 'High', 'In Progress', 'MySQL, Terminal', '1-3 days'),
(2, 'sql', 'target workflow', 'data analyst', 3.5, 0.00, 'HackerRank SQL / DataCamp SQL', 'MySQL Lab', 55000.00, 'High', 'In Progress', 'MySQL, Terminal', '1-3 days'),
(3, 'wireshark', 'packet analysis lab', 'soc analyst', 3.5, 0.00, 'Wireshark Lab / Network+', 'Wireshark Lab', 60000.00, 'High', 'In Progress', 'Wireshark, PCAP file', '3-7 days'),
(4, 'splunk', 'failed login search', 'soc analyst', 3.0, 0.00, 'Splunk Core User / CySA+', 'Splunk Lab', 65000.00, 'High', 'In Progress', 'Splunk, sample logs', '5-10 days'),
(5, 'linux', 'command-line practice', 'help desk', 2.0, 0.00, 'A+ / Linux Lab', 'OverTheWire', 45000.00, 'Medium', 'Needs Practice', 'Linux VM, Terminal', '1-3 days'),
(6, 'excel', 'kpi tracker', 'data analyst', 3.0, 0.00, 'Excel Associate / Maven Analytics', 'Excel Project', 55000.00, 'High', 'In Progress', 'Excel, sample data', '3-7 days'),
(7, 'networking', 'subnetting practice', 'networking technician', 3.0, 0.00, 'Network+ / CCNA', 'Packet Tracer', 55000.00, 'High', 'In Progress', 'Packet Tracer, subnet calculator', '3-7 days'),
(8, 'ticketing', 'password reset documentation', 'help desk', 2.0, 0.00, 'A+ / Help Desk Lab', 'osTicket Lab', 45000.00, 'Medium', 'Needs Practice', 'osTicket, runbook template', '1-3 days'),
(9, 'active directory', 'user account troubleshooting', 'help desk', 2.5, 0.00, 'A+ / Windows Admin Lab', 'AD Home Lab', 50000.00, 'Medium', 'Needs Practice', 'Windows Server, AD lab', '3-5 days'),
(10, 'security logs', 'login event review', 'soc analyst', 3.0, 0.00, 'Security+ / CySA+', 'Windows Logs', 60000.00, 'High', 'In Progress', 'Windows logs, Event Viewer', '3-7 days'),
(11, 'splunk', 'dashboard', 'soc analyst', 3.5, 25.00, 'Splunk Core User', 'Splunk Dashboard', 65000.00, 'High', 'In Progress', 'Splunk, dashboard panels', '5-10 days'),
(12, 'tableau', 'data literacy', 'data analyst', 3.0, 0.00, 'Tableau Desktop Specialist', 'Tableau Public', 55000.00, 'Medium', 'In Progress', 'Tableau Public, dataset', '3-7 days'),
(13, 'tableau', 'visual design', 'data analyst', 3.0, 0.00, 'Tableau Desktop Specialist', 'Tableau Public', 55000.00, 'Medium', 'In Progress', 'Tableau Public, dataset', '3-7 days'),
(14, 'splunk', 'soar automation', 'soc analyst', 3.5, 25.00, 'Splunk SOAR / CySA+', 'Splunk SOAR', 65000.00, 'Medium', 'Planned', 'Splunk SOAR, playbook notes', '2-4 weeks'),
(15, 'splunk', 'network health checker', 'soc analyst', 3.5, 25.00, 'Splunk Core User / Network+', 'Zeek / Splunk', 60000.00, 'Medium', 'Planned', 'Splunk, Zeek, Wireshark', '1-2 weeks'),
(16, 'splunk', 'brute force monitoring', 'soc analyst', 3.5, 25.00, 'Splunk Core User / CySA+', 'Splunk Alerts', 65000.00, 'High', 'In Progress', 'Splunk, auth logs', '5-10 days'),
(17, 'splunk', 'privilege escalation monitoring', 'soc analyst', 3.5, 25.00, 'Sysmon / CySA+', 'Sysmon Logs', 65000.00, 'Medium', 'Planned', 'Sysmon, Splunk, Windows logs', '1-2 weeks'),
(18, 'splunk', 'cloud audit trail security analytics', 'soc analyst', 3.5, 25.00, 'CloudTrail / Security+', 'CloudTrail', 65000.00, 'Medium', 'Planned', 'CloudTrail, Splunk', '1-2 weeks'),
(19, 'splunk', 'boss of the soc', 'soc analyst', 4.0, 50.00, 'Boss of the SOC', 'Boss of the SOC', 65000.00, 'High', 'In Progress', 'Boss of the SOC dataset', '2-4 weeks'),
(20, 'splunk', 'sysmon optimization', 'soc analyst', 3.5, 25.00, 'Sysmon / Splunk Core User', 'Sysmon / Splunk', 65000.00, 'Medium', 'Planned', 'Sysmon, config file, Splunk', '1-2 weeks'),
(21, 'power bi', 'sales dashboard', 'data analyst', 2.5, 0.00, 'PL-300', 'Power BI', 60000.00, 'High', 'Planned', 'Power BI, dataset', '1-3 weeks'),
(22, 'excel', 'pivot table analysis', 'data analyst', 3.0, 0.00, 'Excel Associate', 'Excel Project', 55000.00, 'High', 'In Progress', 'Excel, pivot tables', '3-7 days'),
(23, 'sql', 'query challenge practice', 'data analyst', 3.0, 0.00, 'HackerRank SQL', 'HackerRank SQL', 55000.00, 'High', 'In Progress', 'HackerRank, MySQL', '1-3 days'),
(24, 'data analytics', 'case study project', 'data analyst', 2.5, 0.00, 'Google Data Analytics', 'Google/Coursera', 55000.00, 'Medium', 'Planned', 'Google/Coursera, dataset', '1-2 weeks'),
(25, 'business intelligence', 'dashboard portfolio', 'data analyst', 2.5, 0.00, 'Maven Analytics Project', 'Maven Analytics', 60000.00, 'Medium', 'Planned', 'Maven Analytics, BI tool', '2-3 weeks');

-- Current table snapshot.
SELECT id, skill, project, title, rating, priority, status
FROM tech_goalsasanoob
ORDER BY id;

-- Wider planning view.
SELECT id, skill, project, tools_needed, timeframe
FROM tech_goalsasanoob
ORDER BY id;

-- Future analysis practice ideas:
-- 1. Count projects by title using COUNT and GROUP BY.
-- 2. Average ratings by title using AVG and GROUP BY.
-- 3. Filter high-priority projects with WHERE.
-- 4. Sort projects by rating or salary using ORDER BY.
-- 5. Practice views only after the SELECT queries make sense.
