-- Task 1: Inspect the startups table to determine the number of columns
SELECT *
FROM startups;

-- Task 2: Calculate the total number of companies in the table
SELECT COUNT(*) AS total_companies
FROM startups;

-- Task 3: Calculate the total valuation of all companies
SELECT SUM(valuation) AS total_valuation
FROM startups;

-- Task 4: Find the highest amount raised by a startup
SELECT MAX(raised) AS max_raised
FROM startups;

-- Task 5: Maximum amount of money raised during ‘Seed’ stage
SELECT MAX(raised) AS max_raised_seed
FROM startups
WHERE stage = 'Seed';

-- Task 6: Find the oldest company year
SELECT MIN(founded_year) AS oldest_company_year
FROM startups;

-- Task 7: Return the average valuation of all companies
SELECT AVG(valuation) AS average_valuation
FROM startups;

-- Task 8: Return the average valuation in each category
SELECT category, AVG(valuation) AS average_valuation
FROM startups
GROUP BY category;

-- Task 9: Return the average valuation in each category, rounded to two decimal places
SELECT category, ROUND(AVG(valuation), 2) AS average_valuation
FROM startups
GROUP BY category;

-- Task 10: Return the average valuation in each category, rounded and ordered from highest to lowest
SELECT category, ROUND(AVG(valuation), 2) AS average_valuation
FROM startups
GROUP BY category
ORDER BY average_valuation DESC;

-- Task 11: Return the name of each category with the total number of companies in it
SELECT category, COUNT(*) AS total_companies
FROM startups
GROUP BY category;

-- Task 12: Categories with more than three companies
SELECT category, COUNT(*) AS total_companies
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- Task 13: Average size of a startup in each location
SELECT location, AVG(size) AS average_size
FROM startups
GROUP BY location;

-- Task 14: Average size of a startup in each location with average sizes above 500
SELECT location, AVG(size) AS average_size
FROM startups
GROUP BY location
HAVING AVG(size) > 500;
