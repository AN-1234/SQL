create database SQL_cleaning_in_dataset;
use SQL_cleaning_in_dataset;

DROP TABLE IF EXISTS messy_indian_dataset;
CREATE TABLE IF NOT EXISTS messy_indian_dataset (
    id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(20),
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

-- Handling Missing Values

# rows with null in any column

select * from messy_indian_dataset where name is null or 
age is null or gender is null or email is null or 
phone_number is null or city is null or state is null or
purchase_amount is null or purchase_date is null ;

# rows with non-null in any column

select * from messy_indian_dataset where name is not null and 
age is not null and gender is not null and email is not null and 
phone_number is not null and city is not null and state is not null and
purchase_amount is not null and purchase_date is not null ;

#save table with non- null values
create table if not exists clean_table as
select * from messy_indian_dataset where name is not null and 
age is not null and gender is not null and email is not null and 
phone_number is not null and city is not null and state is not null and
purchase_amount is not null and purchase_date is not null ;

select * from clean_table;

# fill missing age with specific data
update messy_indian_dataset set age =coalesce(age,0);
select * from messy_indian_dataset;

# fill nulls with specific data
update messy_indian_dataset 
set 
    name =coalesce(name,'unknown'),
	gender =coalesce(gender,'unknown'),
    email =coalesce(email,'unknown'),
    phone_number =coalesce(phone_number,'unknown'),
    state =coalesce(state,'unknown'),
	gender =coalesce(gender,'unknown'),
    purchase_date =coalesce(purchase_date,'2023-01-01');
select * from messy_indian_dataset;

# fill null with avg_purchase_amount values
update messy_indian_dataset
set purchase_amount=(
    select avg_puchase_amount from
    (
select avg(purchase_amount) as avg_puchase_amount from messy_indian_dataset
)
as subquery
) where purchase_amount is null;

select * from messy_indian_dataset;

# fill null city with most frequent city

update messy_indian_dataset
set city=(
select most_frequent_city from
(
select city as most_frequent_city,count(*) as 'frequency'
from messy_indian_dataset
 where city is not null
group by city
order by count(*) desc
limit 1
)as subquery
  ) where city is null;
  
  select * from messy_indian_dataset;

-- Removing Duplicates

DROP TABLE IF EXISTS messy_indian_dataset;
CREATE TABLE IF NOT EXISTS messy_indian_dataset (
    id INT,
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
(1, 'Rajesh Patil', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(2, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', NULL, '2023-02-15'),
(3, 'Amit Kumar', 35, 'Male', 'amit@example.com', '9876543212', 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(4, 'Ritu Singh', 28, 'Female', NULL, '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(6, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', 800.00, '2023-02-15'),
(7, 'Amit Kumar', NULL, 'Male', 'amit@example.com', NULL, 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(8, 'Ritu Singh', 28, 'Female', 'ritu@example.com', '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(1, 'Ankit Tiwari', 32, 'Male', 'ankit@example.com', '9876543214', 'Lucknow', 'Uttar Pradesh', 900.00, '2023-05-20'),
(11, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL),
(11, 'Deepak Sharma', 45, 'Male', 'deepak@example.com', '9876543216', 'Chennai', 'Tamil Nadu', 1100.50, '2023-06-15'),
(12, 'Anjali Gupta', 29, 'Female', 'anjali@example.com', '9876543217', 'Hyderabad', 'Telangana', 850.25, '2023-07-25'),
(13, 'Rohit Singh', 33, 'Male', 'rohit@example.com', '9876543218', 'Pune', 'Maharashtra', 950.75, '2023-08-10'),
(1, 'Pooja Patel', 27, 'Female', 'pooja@example.com', '9876543219', 'Ahmedabad', 'Gujarat', 1300.00, '2023-09-20'),
(15, 'Sandeep Verma', 31, 'Male', 'sandeep@example.com', '9876543220', 'Surat', 'Gujarat', 1150.50, '2023-10-05'),
(16, 'Aarti Sharma', 26, 'Female', 'aarti@example.org', '9876543221', 'Varanasi', 'Uttar Pradesh', 850.00, '2023-11-15'),
(1, 'Vikram Singh', 37, 'Male', 'vikram@example.co.in', '9876543222', 'Indore', 'Madhya Pradesh', 1250.25, '2023-12-25'),
(18, 'Ananya Sen', 28, 'Female', 'ananya@example.net', '9876543223', 'Kochi', 'Kerala', 900.75, '2024-01-10'),
(19, 'Nikhil Sharma', 34, 'Male', 'nikhil@example.co.uk', '9876543224', 'Jaipur', 'Rajasthan', 1400.00, '2024-02-20'),
(20, 'Isha Singh', 30, 'Female', 'isha@example.edu.in', '9876543225', 'Lucknow', 'Uttar Pradesh', 1050.50, '2024-03-05'),
(2, 'Alok Kumar', NULL, 'Male', 'alok@example.com', '9876543226', 'Bhopal', 'Madhya Pradesh', 950.25, '2024-04-15'),
(22, 'Shreya Patel', 25, NULL, 'shreya@example.com', '9876543227', 'Vadodara', 'Gujarat', 1350.00, '2024-05-25'),
(23, 'Rahul Verma', 33, 'Male', NULL, '9876543228', 'Nagpur', 'Maharashtra', 1000.75, '2024-06-10'),
(2, 'Anushka Singh', 28, 'Female', 'anushka@example.com', NULL, 'Gurgaon', 'Haryana', NULL, '2024-07-20'),
(25, 'Ravi Kumar', 32, 'Male', 'ravi@example.com', '9876543229', NULL, 'Uttar Pradesh', 1100.50, '2024-08-05'),
(26, 'Aarav Gupta', 27, 'Male', 'aarav@example.com', '9876543230', 'Patna', NULL, 1250.25, '2024-09-15'),
(2, 'Kritika Sharma', 29, 'Female', 'kritika@example.com', '9876543231', 'Chandigarh', 'Punjab', 1200.75, NULL),
(2, NULL, 35, 'Male', 'test@example.com', '9876543232', 'Jaipur', 'Rajasthan', 1300.00, '2024-11-20'),
(2, 'Surbhi Gupta', 26, NULL, 'surbhi@example.com', '9876543233', 'Nashik', 'Maharashtra', 1150.50, '2024-12-05'),
(30, 'Ajay Sharma', NULL, NULL, 'ajay@example.com', '9876543234', 'Jodhpur', 'Rajasthan', 1400.25, '2025-01-15');
select * from messy_indian_dataset;

# find unique rows
select distinct * from messy_indian_dataset;

-- Finding unique values based on ID
select id
from messy_indian_dataset
group by id
order by id;

-- Finding unique values based on name
select name
from messy_indian_dataset
group by name
order by name;

-- Finding unique values based on id using rank
select id, name, age, gender,email, phone_number , city, state, purchase_amount, purchase_date from (
				select *, row_number() over(partition by id order by id) as 'rank' from messy_indian_dataset
			  ) as subtable
where subtable.rank = 1;

-- Finding unique values based on multiple columns | Rajesh Patel & Patil
select id, name, age, gender,email, phone_number , city, state, purchase_amount, purchase_date from (
				select *, row_number() over(partition by id,name order by id) as 'rank' from messy_indian_dataset
			  ) as subtable
where subtable.rank = 1;

-- Converting Data Types

-- Correcting Inconsistent Data | misspelled , inconsistent capitalization, or inconsistent date formats.

-- Validating Data Integrity |Validate the integrity of data 

-- Handling Outliers

-- Parsing and Extracting Information | Email extraction

-- Data Transformation | Scaling, Normalization, or Encoding Categorical Variables