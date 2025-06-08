---1. Write a query to display all the agents name with their phone number from agents table.
select agent_name, phone_number
from agents

---2. Write a query to display the names of all the customers with working area is Leeds from customer table.
select * from customer
where working_area = 'leeds'

---3. Write a query to display the order number and order amount with order description is shoes from orders table.
select order_num, order_amount, order_description
from orders
where order_description = 'shoe' 

---4. Write a query to display the agent code, order amount and order description where order amount= 3000 and order description is clothes
select agent_code, order_amount, order_description
from orders
where order_amount = '3000' and order_description = 'clothes'

---5. Write a query to display all the details from the table order where the order amount is more than 2000.
select * from orders
where order_amount > '2000'

---6. Write a query to display customer name and customer phone number that have alphabet ‘e’ in their name.
select cust_name, phone_number
from customer
where cust_name like '%e%'

---7. Write a query to display all the details from orders table with minimum order amount.
select * from orders
select min(order_amount) as minimum_order_amount from orders

---8. Write a query to display the total order amount from orders table.
select sum(order_amount) as total_order_amount from orders

---9. Write a query to find the number of agents currently listing for all of their customers from orders table.
select count(distinct agent_code) as agents_currently_listing from orders

---10. Write a query to find the highest purchase amount ordered by the each customer code and highest order amount.
select cust_code,max(order_amount) as highest_purchase_amount
from orders
group by cust_code

---highest order amount
SELECT MAX(order_amount) AS highest_order_amount
FROM orders

---11. Write a query to find the highest order amount on a date '2022-07-13' with agent code.
SELECT agent_code, order_amount
FROM orders
WHERE order_date = '2022-07-13'
  

---12. Write a query to find the name and customer city of those customers and agents who work in the same city.

SELECT c.cust_name, c.cust_city, a.agent_name, a.working_area
FROM customer c, agents a
WHERE c.working_area = a.working_area
  AND c.cust_city = a.working_area

  ---13. Write a query to find the name of all the customer names along with the agent names who works for them.
  SELECT c.cust_name, a.agent_name
FROM customer c
JOIN agents a
  ON c.agent_code = a.agent_code

  ---14. Write a query to display all those orders by the customers not located in the same cities where their agents working area.
  SELECT o.order_num, o.order_amount, o.order_date, c.cust_name, c.cust_city, a.agent_name, a.working_area
FROM orders o
JOIN customer c ON o.cust_code = c.cust_code
JOIN agents a ON o.agent_code = a.agent_code
WHERE c.cust_city != a.working_area

---15. Write a query to display all the orders issued by the agent 'Rickey' from the orders table.
SELECT o.order_num, o.order_amount, o.order_date, o.order_description
FROM orders o
JOIN agents a ON o.agent_code = a.agent_code
WHERE a.agent_name = 'Rickey'





