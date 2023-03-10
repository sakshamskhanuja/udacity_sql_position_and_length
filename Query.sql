/* Use the accounts table to create first and last name columns that hold the first and last names for the
primary_poc. */
SELECT LEFT(primary_poc, POSITION(' ' IN primary_poc)) first_name, 
       RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc)) last_name
FROM accounts;

/* Now see if you can do the same thing for every rep name in the sales_reps table. Again provide first and
last name columns. */
SELECT LEFT(name, POSITION(' ' IN name)) first_name, 
       RIGHT(name, LENGTH(name) - POSITION(' ' IN name)) last_name
FROM sales_reps;