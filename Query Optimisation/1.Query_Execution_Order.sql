
use resturant;
DROP TABLE IF EXISTS messy_indian_dataset;
CREATE TABLE IF NOT EXISTS messy_indian_dataset (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE
);

-- Insert messy data into the table for Indian users
INSERT INTO messy_indian_dataset (id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date) VALUES
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(2, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', NULL, '2023-02-15'),
(3, 'Amit Kumar', 35, 'Male', 'amit@example.com', '9876543212', 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(4, 'Ritu Singh', 28, 'Female', NULL, '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(5, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(6, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', 800.00, '2023-02-15'),
(7, 'Amit Kumar', NULL, 'Male', 'amit@example.com', NULL, 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(8, 'Ritu Singh', 28, 'Female', 'ritu@example.com', '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(9, 'Ankit Tiwari', 32, 'Male', 'ankit@example.com', '9876543214', 'Lucknow', 'Uttar Pradesh', 900.00, '2023-05-20'),
(10, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL),
(11, 'Deepak Sharma', 45, 'Male', 'deepak@example.com', '9876543216', 'Chennai', 'Tamil Nadu', 1100.50, '2023-06-15'),
(12, 'Anjali Gupta', 29, 'Female', 'anjali@example.com', '9876543217', 'Hyderabad', 'Telangana', 850.25, '2023-07-25'),
(13, 'Rohit Singh', 33, 'Male', 'rohit@example.com', '9876543218', 'Pune', 'Maharashtra', 950.75, '2023-08-10'),
(14, 'Pooja Patel', 27, 'Female', 'pooja@example.com', '9876543219', 'Ahmedabad', 'Gujarat', 1300.00, '2023-09-20'),
(15, 'Sandeep Verma', 31, 'Male', 'sandeep@example.com', '9876543220', 'Surat', 'Gujarat', 1150.50, '2023-10-05'),
(16, 'Aarti Sharma', 26, 'Female', 'aarti@example.org', '9876543221', 'Varanasi', 'Uttar Pradesh', 850.00, '2023-11-15'),
(17, 'Vikram Singh', 37, 'Male', 'vikram@example.co.in', '9876543222', 'Indore', 'Madhya Pradesh', 1250.25, '2023-12-25'),
(18, 'Ananya Sen', 28, 'Female', 'ananya@example.net', '9876543223', 'Kochi', 'Kerala', 900.75, '2024-01-10'),
(19, 'Nikhil Sharma', 34, 'Male', 'nikhil@example.co.uk', '9876543224', 'Jaipur', 'Rajasthan', 1400.00, '2024-02-20'),
(20, 'Isha Singh', 30, 'Female', 'isha@example.edu.in', '9876543225', 'Lucknow', 'Uttar Pradesh', 1050.50, '2024-03-05'),
(21, 'Alok Kumar', NULL, 'Male', 'alok@example.com', '9876543226', 'Bhopal', 'Madhya Pradesh', 950.25, '2024-04-15'),
(22, 'Shreya Patel', 25, NULL, 'shreya@example.com', '9876543227', 'Vadodara', 'Gujarat', 1350.00, '2024-05-25'),
(23, 'Rahul Verma', 33, 'Male', NULL, '9876543228', 'Nagpur', 'Maharashtra', 1000.75, '2024-06-10'),
(24, 'Anushka Singh', 28, 'Female', 'anushka@example.com', NULL, 'Gurgaon', 'Haryana', NULL, '2024-07-20'),
(25, 'Ravi Kumar', 32, 'Male', 'ravi@example.com', '9876543229', NULL, 'Uttar Pradesh', 1100.50, '2024-08-05'),
(26, 'Aarav Gupta', 27, 'Male', 'aarav@example.com', '9876543230', 'Patna', NULL, 1250.25, '2024-09-15'),
(27, 'Kritika Sharma', 29, 'Female', 'kritika@example.com', '9876543231', 'Chandigarh', 'Punjab', 1200.75, NULL),
(28, NULL, 35, 'Male', 'test@example.com', '9876543232', 'Jaipur', 'Rajasthan', 1300.00, '2024-11-20'),
(29, 'Surbhi Gupta', 26, NULL, 'surbhi@example.com', '9876543233', 'Nashik', 'Maharashtra', 1150.50, '2024-12-05'),
(30, 'Ajay Sharma', NULL, NULL, 'ajay@example.com', '9876543234', 'Jodhpur', 'Rajasthan', 1400.25, '2025-01-15');
select * from messy_indian_dataset;


SELECT name, city 
	FROM messy_indian_dataset;
-- 1. FROM
-- 2. SELECT


SELECT name, city, purchase_amount
	FROM messy_indian_dataset
		WHERE purchase_amount > 1000;
-- 1. FROM
-- 2. WHERE
-- 3. SELECT



SELECT name, city, purchase_amount
	FROM messy_indian_dataset
		WHERE purchase_amount > 1000
			ORDER BY purchase_amount DESC;
-- 1. FROM
-- 2. WHERE
-- 3. SELECT
-- 4. ORDER BY
            


SELECT city, AVG(purchase_amount) AS avg_purchase
	FROM messy_indian_dataset
		GROUP BY city;
-- 1. FROM
-- 2. GROUP BY
-- 3. SELECT



SELECT city, AVG(purchase_amount) AS avg_purchase
	FROM messy_indian_dataset
		GROUP BY city
			HAVING AVG(purchase_amount) > 1000;
-- 1. FROM
-- 2. GROUP BY
-- 3. HAVING
-- 4. SELECT


DROP TABLE states;
CREATE TABLE states ( state VARCHAR(50), region VARCHAR(50) );
INSERT INTO states (state, region) VALUES 	('Maharashtra', 'West'), ('Delhi', 'North'), ('Karnataka', 'South'), 
											('West Bengal', 'East'), ('Rajasthan', 'West');
SELECT m.name, m.city, s.region
	FROM messy_indian_dataset m
		JOIN states s ON m.state = s.state;
-- 1. FROM
-- 2. JOIN
-- 3. SELECT



SELECT name, city, purchase_amount
	FROM messy_indian_dataset
		WHERE purchase_amount > (SELECT AVG(purchase_amount) FROM messy_indian_dataset);
-- 1. Subquery(FROM)
-- 2. Subquery(SELECT)
-- 3. FROM
-- 4. WHERE
-- 5. SELECT



-- Final

-- Order of Execution
-- 1. FROM: Determines the source tables and joins if any.
-- 2. WHERE: Applies row filtering.
-- 3. GROUP BY: Groups rows by specified columns.
-- 4. HAVING: Applies group filtering.
-- 5. SELECT: Determines which columns to include in the final result set.
-- 6. ORDER BY: Sorts the result set.
-- 7. LIMIT: Restricts the number of rows in the result set.