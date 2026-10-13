use e_commerce_sales_analysis;
SELECT * FROM customer;

 # Display the first 10 records from the customer shopping table.
 select* from customer limit 20;

 # Calculate the total purchase amount for all customers
  SELECT SUM(`Total_Amount`) AS sum_of_sales
 FROM customer;

 # Find the average purchase amount for all customers.
 select 
 Product_Category,
 (`unit_price`) as avg_sales
 from customer;
 #Calculate total purchase amount for each product category and sort from highest to lowest.
  select
     Product_Category,
   SUM(Total_Amount) AS total_purchase_amount
  FROM customer
  GROUP BY Product_Category
  ORDER BY total_purchase_amount DESC;
  SELECT COUNT(*) AS total_orders
 FROM customer;
- # Count the total number of orders.
SELECT 
     City, 
      COUNT(Order_ID) AS Number_of_Orders
 FROM 
      customer
  GROUP BY 
     City
     ORDER BY 
     Number_of_Orders DESC;
 # Find the total sales for each payment method.d,
 select 
 payment_method,
 count(payment_method)as total_sales
 from customer
 group by
 Payment_Method
 order by payment_method desc;
 # Show orders where the total amount is greater than 1,000.
 select*from customer
 where Total_Amount>1000;
 # Find customers whose age is greater than 40
 select*from customer
 where age>40;
 # Count returning and non-returning customer orders.
 SELECT 
     Is_Returning_Customer, 
     COUNT(Order_ID) AS Number_of_Orders
 FROM 
   customer
 GROUP BY 
     Is_Returning_Customer;
 select 
 gender,
 count(gender) as gender 
 from customer 
 group by gender;
 # Find the top 5 product categories by total sales.

	select
   customer_rating,
   avg (`customer_rating`) as avg_rating
   from customer
 group by customer_rating;
 
 select
 quantity
 from 
 customer
 group by quantity;
 
 select 
    city
 from 
 customer 
 group by city
 having sum(Order_ID)>100;
# Find cities with more than 100 orders.
SELECT city,
       COUNT(customer_id) AS order_count
FROM customer
GROUP BY city
HAVING COUNT(customer_id) > 100
ORDER BY order_count DESC;

