USE store;

SHOW tables;

SELECT * FROM customers;

SELECT * FROM customers  ORDER BY customer_id DESC;

-- comment in one line

/*
 multiline comments
 
 sql is  a case insensitive , but usually we use UPPERCASE for keywords 
 and lowercase for table and column names etc..
*/
USE exercise_hr;

SHOW tables;

SELECT  EMPLOYEE_ID,FIRST_NAME, LAST_NAME,SALARY FROM employees;

SELECT 1,2;

SELECT 1+2;

SELECT 100 - 50 /2;

SELECT 100 - 50 /2 	AS value;

SELECT 100 - 50 /2 	AS 'answer value';
/*
syntax for SELECT statement:
SELECT <column-1>,<column-2>,....,<column-n>
FROM <table_name>;

SELECT * .. all columns of the table
FROM <table_name>;
*/


USE store;

SELECT * FROM customers;

SELECT  first_name , last_name , points FROM customers;

SELECT  first_name , last_name , points , points + 10 AS 'new points'
FROM customers;

SELECT 171 * 214 + 625 ;

USE exercise_hr;

SHOW tables;

SELECT  first_name AS 'First Name' , last_name AS 'Last Name'
 FROM employees;
 
 SELECT *
 FROM employees;
 
 SELECT  first_name  , last_name , salary , 15 / 100  * salary  AS 'PF'
 FROM employees;
 
 SELECT  department_id
 FROM employees;


SELECT *
 FROM employees;

USE store;

SHOW tables;

SELECT * 
FROM products;

SELECT name , unit_price , 1.1 * unit_price AS 'new price'
FROM products;



SELECT * 
FROM customers;

SELECT * 
FROM customers 
WHERE state = 'FL';

SELECT * FROM customers where points > 3000;


SELECT * FROM customers where birth_date > 1993;

SELECT * FROM customers WHERE state != 'FL';

SELECT * FROM customers where points > 3000 AND birth_date > '1990-01-01';

SELECT * FROM customers where points > 3000 OR birth_date > '1990-01-01';

SELECT * FROM customers where (birth_date > '1989-01-01' AND points > 1000) OR state = 'VA';

SELECT * FROM customers WHERE NOT (state = 'FL');

SELECT * FROM customers
WHERE state = 'VA' OR state = 'FL' OR state = 'GA';

SELECT * FROM customers
WHERE state IN ('VA' ,'FL', 'GA');


SELECT * FROM products 
WHERE quantity_in_stock IN ('49','38','72');

SELECT * FROM products 
WHERE quantity_in_stock NOT IN ('72');

SELECT * FROM customers;

SELECT * FROM customers
WHERE birth_date BETWEEN  '1990_01-01' AND '2000_01-01';

SELECT * FROM customers 
WHERE CONTAINS (address,'Trail');

SELECT * FROM customers 
WHERE points BETWEEN 2000 AND 10000;

SELECT * FROM customers 
WHERE  address LIKE '%Trail%' OR   address LIKE  '%Avenue%';

SELECT * FROM customers 
WHERE  phone LIKE '%9' ;

SELECT * FROM customers 
WHERE  phone NOT LIKE '%9' ;

SELECT * FROM customers 
WHERE first_name LIKE '%Elka' OR first_name LIKE '%Ambur';

SELECT * FROM customers 
WHERE last_name LIKE '%ey' OR last_name LIKE '%on';

SELECT * FROM customers 
WHERE last_name LIKE 'my%' OR last_name LIKE  'se%';

USE exercise_hr;

SHOW tables;

SELECT * FROM employees 
WHERE first_name LIKE '%b%' AND first_name LIKE  '%c%';

SELECT * FROM employees 
WHERE first_name LIKE '%b%c%';


SELECT * FROM employees 
WHERE LENGTH(last_name) = 6;

SELECT * FROM employees 
WHERE last_name LIKE '__e';



USE store;

SHOW tables;

SELECT * FROM customers;

SELECT last_name FROM customers 
WHERE last_name LIKE '_____%y';

SELECT last_name FROM customers 
WHERE last_name LIKE 'b____y';


/*
^ - caret - starts with
$ - dollar - ends with
| - pipe operator - logical OR
[-] - set - logical OR with 


*/
-- write a query to find all customers having last_names that contain 'age'
SELECT * FROM customers
WHERE last_name REGEXP 'age';

-- start Mac taking
SELECT * FROM customers
WHERE last_name REGEXP '^Mac';

-- last name ends with field
SELECT * FROM customers
WHERE last_name REGEXP 'field$';

-- last names start with Mac or ends with field
SELECT * FROM customers
WHERE last_name REGEXP '^Mac|field$';

-- last names contains ae, be , ce , de ,ee ,fe , ge , or help

SELECT * FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|fe|ee|fe|ge|he';

SELECT * FROM customers
WHERE last_name REGEXP '[a-h]e';

SELECT * FROM customers
WHERE last_name REGEXP 'ge|ie|me' ;


SELECT * FROM customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT * FROM customers
WHERE last_name REGEXP '^MY|SE';


SELECT * FROM customers
WHERE last_name REGEXP 'B[a-z]*[RU]';

USE exercise_hr;

Show tables;
SELECT * FROM employees
WHERE last_name REGEXP 'B[a-z]*[RU]';


SELECT * FROM customers
WHERE phone IS NULL;

SELECT * FROM customers
WHERE phone IS NOT NULL;

USE store;

SHOW tables;

SELECT * FROM customers
WHERE last_name REGEXP 'br|bu';

SELECT * FROM orders
WHERE shipped_date IS NULL;

SELECT * FROM orders
WHERE shipped_date IS NULL;

USE exercise_hr;
SHOW tables;


SELECT * FROM employees
ORDER BY first_name , department_id DESC;


/* SELECT -> FROM -> WHERE optional -> optionally ORDER BY -> LIMIT always come atlast
not folowing the order gives error
 */
SELECT * FROM customers 
ORDER BY points DESC LIMIT 3;

SELECT * FROM customers 
LIMIT 3;


 SELECT * FROM employees
 WHERE first_name = "Lex";
 
EXPLAIN SELECT * FROM employees
 WHERE first_name = "Lex";

/*

--TO CREATE A DATABASE 
CREATE DATABASE IF NOT EXISTS project;

--create table in database
CREATE TABLE user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(200),
first_name VARCHAR(50),
last_name VARCHAR(50)

--describe the user table how the structure of our database 
DESCRIBE user;

--DELETE our table from our database 
DROP TABLE user;


==DATATYPES IN SQL
Numbers : INT,BIGINT
DECIMAL numbers : DOUBLE
strings :
 -- if fixed length : CHAR(2)
 -- if variable length : VARCHAR(255)
 date : DATE
 datetime : 	DATATYPE
 Boolean : TINYINT
);

--add a new column 'whatsapp_no' with datatype int

-- Update the 'whatsapp_no' column datatype from int to varchar(20)














*/




