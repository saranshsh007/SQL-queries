CREATE TABLE customer(
customerID INT PRIMARY KEY,
customerName VARCHAR(225),
city varchar(225),
country varchar(225),
email varchar(225),
phone INT ,
gender CHAR(10),
DOB DATE,
address VARCHAR(225),
postalCode VARCHAR(225),
occupation VARCHAR(225),
education VARCHAR(225),
maritalStatus VARCHAR(225),
childrenCount INT,
annualIncome INT
);



INSERT INTO customer VALUES
(1,	'John Smith','New York','USA','john.smith@example.com',1567890,'Male','1980-05-15','123 Main St'	,'10001','Engineer','Bachelor','Married',2,80000),
(2,	'Emma Johnson','London','UK','emma.johnson@example.com',1567890,'Male','1985-07-21','456 Oxford St','SW1A 1AA','Teacher','Master','Single',0,50000),
(3,'Pablo Ramirez','Madrid','Spain','pablo.ramirez@example.com',3456789,'Male','1972-11-08','789 Calle Mayor',	'28001'	,'Lawyer','Doctorate','Married',1,120000),
(4,	'Sophia Lee','Seoul','South Korea','sophia.lee@example.com',82345678,'Female','1992-02-12','321 Gangnam-gu','4545','Graphic Designer','Bachelors','Single',0,40000),
(5,	'Luca Rossi','Rome','Italy','luca.rossi@example.com',3934123,'Male','1988-09-30','654 Via Appia','100','Accountant','Masters','Married',2,90000),
(6	,'David Johnson','Toronto','Canada','david.johnson@example.com',1543210	,'Male','1982-04-03'	,'987 Yonge St','M4W 2J2'	,'Architect','Bachelors','Married',1,100000),
(7,'Maria Garcia','Mexico City','Mexico','maria.garcia@example.com',52345678,'Female','1979-12-17','654 Reforma Ave','11560','Journalist','Masters','Divorced',0,70000),
(8,'Mohammed Ahmed','Cairo','Egypt','mohammed.ahmed@example.com',20345678,'Male','1990-06-25'	,'321 Tahrir Square'	,'12345'	,'Doctor'	,'Doctorate'	,'Married'	,3,150000),
(9,'Hiroshi Tanaka','Tokyo','Japan','hiroshi.tanaka@example.com',81345678,'Male','1975-08-11','789 Shibuya',	'150-0041',	'Businessman','Masters','Married',2,200000),
(10	,'Sophie Dubois','Paris','France','sophie.dubois@example.com',3361278,'Female','1984-03-27','456 Champs-Élysées','75008','Interior Designer','Bachelors','Single',0,60000),
(11	,'Juan Perez','Buenos Aires','Argentina','juan.perez@example.com',5345678,'Male','1994-01-05','123 Avenida de Mayo','1006','Musician','High School','Single',0,30000),
(12	,'Anita Sharma','Mumbai','India','anita.sharma@example.com',9143210	,'Female'	,'1987-10-02'	,'789 Marine Drive','400001'	,'Software Engineer','Bachelors'	,'Married'	,2,80000),
(13	,'Luis Sanchez','Lima','Peru','luis.sanchez@example.com',534567,'Male','1981-07-19','321 Miraflores','18','Chef','Diploma','Married',1,50000),
(14,'Sven Svensson','Stockholm','Sweden','sven.svensson@example.com',46234567,'Male','1986-12-04','654 Drottninggatan','111 36','Photographer','Bachelors','Single',0,40000),
(15	,'Ana Silva','Lisbon','Portugal','ana.silva@example.com',35191278,'Female','1991-05-23','987 Avenida da Liberdade','1250-096','Marketing Manager','Masters','Single',0,90000),
(16	,'Anna Müller','Berlin','Germany','anna.muller@example.com',49345678,'Female','1989-09-09','456 Friedrichstraße','10117','Consultant','Masters','Single',0,70000),
(17,'Chen Wei','Beijing','China','chen.wei@example.com',86101278,'Male','1983-03-01','789 Wangfujing St','100006','Business Analyst','Bachelors','Married',1,80000),
(18,'Daniel Hernandez','Santiago','Chile','daniel.hernandez@example.com',5645678,'Male','1978-06-16'	,'321 Providencia Ave',	'7510195'	,'Entrepreneur'	,'Masters'	,'Married'	,2,120000),
(19,'Isabella Rossi','Rome','Italy','isabella.rossi@example.com',39345623,'Female','1990-02-28','654 Via Veneto','187','Lawyer','Masters','Single',	0,	110000),
(20,'Javier Fernández','Madrid','Spain','javier.fernandez@example.com',3456789,'Male','1987-11-10','789 Gran Vía','28013','Sales Manager','Bachlors','Married',2,95000),
(21,'Katrina Johnson','Sydney','Australia','katrina.johnson@example.com',6121678,'Female','1984-07-07','456 George St','2000','Engineer','Bachelors','Divorced',1,85000),
(22,'Nadia Petrova','Moscow','Russia','nadia.petrova@example.com',7999127,'Female','1986-04-21','321 Tverskaya St','125009','Designer','Masters','Single',0,60000),
(23	,'Rahul Verma'	,'Delhi','India','rahul.verma@example.com'	,91943210	,'Male','1993-09-15','789 Connaught Place'	,'110001'	,'Teacher'	,'Bachelors'	,'Married'	,1,70000),
(24	,'Tomasz Kowalski','Warsaw','Poland','tomasz.kowalski@example.com',48456789,'Male','1977-03-12','654 Nowy Świat','00-001','Architect','Masters',	'Married',2,	130000),
(25	,'Yuki Tanaka','Osaka','Japan','yuki.tanaka@example.com'	,81905678,'Female','1995-01-30'	,'987 Dōtonbori','542-0071','Artist','Bachelors'	,'Single',0,40000),
(26	,'Zara Khan','Dubai','UAE','zara.khan@example.com',	971501267,'Female','1992-08-28','123 Sheikh Zayed Rd','12345','Banker','Masters','Married',1,180000),
(27	,'Kim Min-jun','Seoul','South Korea','kim.minjun@example.com',88765432,'Male','1994-12-03','321 Gangnam-gu','4545','Software Developer','Bachelors','Single',0,55000),
(28	,'Laura Müller','Vienna','Austria','laura.muller@example.com',4315678,'Female','1983-06-08','654 Ringstraße','1010','Consultant','Masters','Married',2,95000),
(29	,'Miguel Torres','Lisbon','Portugal','miguel.torres@example.com',3515678,'Male','1991-09-25','789 Avenida da Liberdade','1250-096','Doctor','Doctorate','Single',0,150000),
(30,'Emma Andersen'	,'Copenhagen','Denmark','emma.andersen@example.com',4345678,	'Female','1988-02-17','987 Strøget','1000','Entrepreneur','Bachelors','Married',2,120000);
SELECT * FROM customer;




CREATE TABLE orders(
orderID INT,
custID INT,
orderDate DATE,
totalAmount INT,
FOREIGN KEY (custID) references customer(customerID)

);

INSERT INTO orders VALUES
(1,	2,	'2023-05-10'	,250),	
(2	,1,	'2023-06-05',150),	
(3	,4,	'2023-05-28'	,300),	
(4	,3,	'2023-06-12'	,200),	
(5	,2,	'2023-05-15'	,100),	
(6	,5,	'2023-06-02'	,350),	
(7	,3,	'2023-06-08'	,180),	
(8	,4,	'2023-05-18'	,220),	
(9	,1,	'2023-05-25'	,270),	
(10	,2,	'2023-06-01'	,120),	
(11	,5,	'2023-05-12'	,400),	
(12	,3,	'2023-06-10'	,210),	
(13	,4,	'2023-05-22'	,190),	
(14	,1,	'2023-05-30'	,230),	
(15	,2,	'2023-06-07'	,130),	
(16	,5,	'2023-05-20'	,380),	
(17	,3,	'2023-06-04'	,250),	
(18	,4,	'2023-05-16'	,240),	
(19	,1,	'2023-05-23'	,290),	
(20	,2,	'2023-05-31'	,140),	
(21	,5,	'2023-06-06'	,420),	
(22	,3,	'2023-06-14'	,230),	
(23	,4,	'2023-05-26'	,270),	
(24	,1,	'2023-06-02'	,300),	
(25	,2,	'2023-06-09'	,160),	
(26	,5,	'2023-05-17'	,410),	
(27	,3,	'2023-05-24'	,200),	
(28	,4,	'2023-06-01'	,250),	
(29	,1,	'2023-06-08'	,320),	
(30	,2	,'2023-06-15'	,180);	
SELECT * FROM orders;

-- question 1 Retrieve the CustomerName, OrderID, and TotalAmount for customers who have placed orders with a total amount greater than 200.
SELECT customerName , orderID , totalAmount
FROM orders
JOIN customer ON orders.custID = customer.customerID
WHERE totalAmount >200;

-- quesiton 2 :- Retrieve the CustomerName and the count of orders placed by each customer, including customers who have not placed any orders.
SELECT customer.customerName , COUNT(orders.orderID) AS orderCount
FROM customer
LEFT JOIN orders ON customer.customerID = orders.custID
GROUP BY customer.customerName;

-- question 3 :- Retrieve the CustomerName and the average TotalAmount of orders placed by each customer, including customers without any orders.
SELECT customer.customerName , AVG(orders.totalAmount) AS AverageTAmount
FROM customer
LEFT JOIN orders ON customer.customerID = orders.custID
GROUP BY customer.customerName;

-- question 4 Retrieve the CustomerName and TotalAmount of all customers and orders, including unmatched records from both sides.
SELECT customer.customerName , orders.totalAmount
FROM customer
LEFT JOIN orders ON customer.customerID = orders.custID
UNION
SELECT customer.customerName , orders.totalAmount
FROM customer
RIGHT JOIN orders ON customer.customerID = orders.custID
WHERE customer.customerID IS NULL;

-- question 5 Retrieve the CustomerName and the total count of orders placed by each customer, including unmatched customers and orders.
SELECT customer.customerName , COUNT(orders.custID) AS OrderCount
FROM customer
LEFT JOIN orders ON customer.customerID = orders.custID
GROUP BY customer.customerID
UNION
SELECT customer.customerName , COUNT(orders.orderID) AS OrderCount
FROM customer
RIGHT JOIN orders ON customer.customerID = orders.custID
GROUP BY orders.custID;