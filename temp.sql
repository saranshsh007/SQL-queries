CREATE database temp;
USE temp;

CREATE TABLE customer(
id INT PRIMARY KEY,
cname VARCHAR(225),
address VARCHAR(225),
gender CHAR(2),
city VARCHAR(225),
Pincode integer
);

INSERT INTO customer VALUES (1,'Ram Kumar','DIlbagh Nagar','M','Jalandhar',110076),
							(2,'Saransh Sharma','Lajpat Nagar','M','Delhi',110096),
                            (3,'Ruhani','Chattarpur','F','Delhi',110086),
                            (4,'Netra Sharma','Greater Kailash','F','Delhi',110056),
                            (5,'Rohan Arora','Ludhiana','M','Ludhiana',110036);
	
SELECT * FROM customer;
 
 -- update
 UPDATE customer SET address ='MUMBAI' , gender = 'F' WHERE id=1;
 
 -- update multiple rows
 SET SQL_SAFE_UPDATES =1;
 UPDATE customer SET Pincode = 110056;
 UPDATE customer SET Pincode = Pincode *10;
 
 -- DELETE
 DELETE FROM customer WHERE id =1;
 
 -- REPLACE 
 REPLACE INTO customer (id,city)
 VALUES(1,'KERELA');
 
 REPLACE INTO customer SET id=6 , name = 'Daku'
 , city = 'chattisgarh';







CREATE TABLE order_details(
order_id INT PRIMARY KEY,
delivery_date DATE,
cust_id INT,
FOREIGN KEY (cust_id) references customer(id)
);
INSERT INTO order_details VALUES (1,'2023-06-15',3);
SELECT * FROM order_details;


CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT NOT NULL DEFAULT 0
);

-- ADD NEW COLUMN
ALTER TABLE account ADD interest FLOAT NOT NULL DEFAULT 0;

-- modify
ALTER TABLE account MODIFY interest DOUBLE NOT NULL DeFAULT 0;
DESC account;

-- change/rename the column
ALTER TABLE account CHANGE interest saving_interest FLOAT NOT NULL DEFAULT 0;
DESC account;

-- DROP column
ALTER TABLE account DROP saving_interest;

-- rename the table
ALTER TABLE account RENAME TO account_details;
SELECT * FROM account_details;




-- JOINS 


CREATE TABLE Student (      
  id int PRIMARY KEY,     
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
);    
  
CREATE TABLE Fee(   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid INT  
 );  

INSERT INTO Student (id,admission_no, first_name, last_name, age, city)       
VALUES (1,3354,'Luisa', 'Evans', 13, 'Texas'),       
(2,2135, 'Paul', 'Ward', 15, 'Alaska'),       
(3,4321, 'Peter', 'Bennett', 14, 'California'),    
(4,4213,'Carlos', 'Patterson', 17, 'New York'),       
(5,5112, 'Rose', 'Huges', 16, 'Florida'),  
(6,6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7,7555,'Antonio', 'Butler', 14, 'New York'),       
(8,8345, 'Diego', 'Cox', 13, 'California');
INSERT INTO Student (id,admission_no, first_name, last_name, age, city)       
VALUES(10,8345, 'Diego', 'Saransh Sharma', 13, 'California'); 

INSERT INTO Fee (admission_no, course, amount_paid)       
VALUES (3354,'Java', 20000),       
(7555, 'Android', 22000),       
(4321, 'Python', 18000),    
(8345,'SQL', 15000),       
(5112, 'Machine Learning', 30000);  

SELECT * FROM Student;
SELECT * FROM Fee;


-- INNER JOIN
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
INNER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

-- Self join
SELECT S1.first_name, S2.last_name, S2.city  
FROM Student S1, Student S2  
WHERE S1.id <> S2.iD AND S1.city = S2.city  
ORDER BY S2.city;  

-- Cross join
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
CROSS JOIN Fee  
WHERE Student.admission_no = Fee.admission_no;  

-- Left join
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
LEFT OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

-- Right Join
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
RIGHT OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

-- FULL JOIN
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
FULL JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

-- UNION
SELECT * FROM Student UNION SELECT * FROM customer;  

-- intersect
SELECT first_name FROM Student INTERSECT SELECT cname FROM customer;