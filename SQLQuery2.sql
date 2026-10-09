USE sales;
GO 
SELECT * FROM sales;

--Data Cleaning & Category Mapping
SELECT 
sale_id as sales_id,
branch,
city,
customer_type,
gender,
product_name,
CASE 
WHEN product_name = 'Shampoo' THEN 'Personal Care'
WHEN product_name = 'Notebook' THEN 'Stationery'
WHEN product_name = 'Apple' THEN 'Fruits'
WHEN product_name = 'Detergent' THEN 'Household'
WHEN product_name = 'Orange Juice' THEN 'Beverages'
ELSE product_category
END AS product_category,
unit_price, 
quantity,
tax,
total_price,
reward_points 
FROM sales;

--Loyalty Program Reward Points Percentage Analysis
 SELECT 
 customer_type,
 total_price, 
 reward_points,
 ROUND ((reward_points /total_price ) * 100, 2) AS points_percentage
 FROM sales
 WHERE customer_type = 'Member' AND reward_points > 0;

--Regional Sales & Branch Revenue Performance 
SELECT 
 city,
 branch,
 COUNT(sale_id) AS total_transactions,
 SUM(quantity) AS total_quantity,
 ROUND(SUM(total_price) ,2) AS total_revenue
 FROM sales
  GROUP BY city,branch
 ORDER BY total_revenue DESC;

 --Customer Type Behavioral Analysis (Member vs. Normal)
 SELECT 
 customer_type,
 COUNT(sale_id) AS total_order,
 SUM(quantity) AS total_quantity,
 ROUND (AVG(quantity) ,2) AS AVG_quantity_par_order,
 ROUND (AVG(total_price) ,2) AS AVG_spent_per_order,
 ROUND (SUM(total_price) ,2) AS total_revenue
 FROM sales
 GROUP BY customer_type;



 --Product Performance & Bestsellers Breakdown
 SELECT 
 product_name,
ROUND(SUM(total_price) ,2)AS product_revenue ,
SUM(quantity) AS Quantity_sold_per_product
FROM sales
GROUP BY product_name
ORDER BY  product_revenue DESC; 

--Gender-Based Sales & Demographics Analysis
SELECT 
gender,
count(sale_id) AS total_orders,
SUM(quantity) AS total_items_bough, 
ROUND(AVG(total_price) ,2) AS AVG_orders_value,
ROUND(SUM(total_price) ,2) AS total_revenue
FROM sales
GROUP BY gender;

