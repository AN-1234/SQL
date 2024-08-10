create database Resturant;
use Resturant;

select * from restaurant_data_analysis;

# Which restaurant in Abohar is visited by the least number of people?
SELECT * FROM restaurant_data_analysis
WHERE city = 'Abohar' AND rating_count = (SELECT MIN(rating_count) FROM restaurant_data_analysis );


# Which restaurant has generated maximum revenue all over India?
SELECT * FROM restaurant_data_analysis
WHERE cost * rating_count = (SELECT MAX(cost * rating_count) FROM restaurant_data_analysis);

# How many restaurants are having a rating more than the average rating?
SELECT * FROM restaurant_data_analysis
WHERE rating > (SELECT AVG(rating) FROM restaurant_data_analysis);


#  Which restaurant of Delhi has generated the most revenue?
SELECT * FROM restaurants
WHERE city = 'Delhi' AND cost * rating_count = (SELECT MAX(cost * rating_count) FROM restaurants WHERE city = 'Delhi');

# Which restaurant chain has the maximum number of restaurants?
SELECT name, COUNT(name) AS no_of_chains
FROM restaurant_data_analysis
GROUP BY name
ORDER BY no_of_chains DESC;

#Which restaurant chain has generated maximum revenue?
SELECT name, SUM(rating_count * cost) AS revenue
FROM restaurant_data_analysis
GROUP BY name
ORDER BY revenue DESC
LIMIT 10;

# Which city has the maximum number of restaurants?
SELECT city, COUNT(name) AS no_of_restaurants
FROM restaurant_data_analysis
GROUP BY city
ORDER BY no_of_restaurants DESC
LIMIT 10;

# Which city has generated maximum revenue all over India?
SELECT city, SUM(rating_count * cost) AS revenue
FROM restaurant_data_analysis
GROUP BY city
ORDER BY revenue DESC
LIMIT 10;

#List 10 least expensive cuisines?
SELECT cuisine, avg(cost) AS avg_cost
FROM restaurant_data_analysis
GROUP BY cuisine
ORDER BY avg_cost ASC
LIMIT 10;

#List 10 most expensive cuisines?
SELECT cuisine, avg(cost) AS avg_cost
FROM restaurant_data_analysis
GROUP BY cuisine
ORDER BY avg_cost DESC
LIMIT 10;

# What city has Biryani as the most popular cuisine?
SELECT city, AVG(cost), COUNT(*) AS restaurants
FROM restaurant_data_analysis
WHERE cuisine = 'Biryani'
GROUP BY city
ORDER BY restaurants DESC;

#List top 10 unique restaurants with unique names throughout the dataset as per maximum revenue (Single restaurant with that name)
SELECT name,count(name), SUM(cost * rating_count) AS revenue
FROM restaurant_data_analysis
GROUP BY name
HAVING COUNT(name) = 1
ORDER BY revenue DESC;
