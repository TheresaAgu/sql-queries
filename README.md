# sql-queries
A structured SQL project showcasing foundational querying skills using a mock sales database. Includes operations like filtering, joins, aggregation, and business logic queries across agents, customers, and orders tables.
# sql queries

This repository contains a collection of SQL queries written as part a project to demonstrate fundamental SQL skills. The queries interact with a hypothetical sales database containing the following tables:

- `agents`
- `customer`
- `orders`

## 📋 Project Structure

The SQL script is organized into the following sections:
- **Agent Queries**: Retrieve and analyze data related to sales agents.
- **Customer Queries**: Explore customer data, including relationships with agents.
- **Order Queries**: Analyze and aggregate order data using conditions, grouping, and joins.

## 💡 Topics Covered

- Basic `SELECT` queries
- `WHERE` conditions and pattern matching
- `JOIN` operations (`INNER JOIN`, multi-table conditions)
- Aggregate functions (`COUNT`, `SUM`, `MAX`, `MIN`)
- Grouping with `GROUP BY`
- Filtering results based on business logic

## ▶️ How to Run

1. Ensure your SQL environment has the following tables:
   - `agents(agent_code, agent_name, phone_number, working_area)`
   - `customer(cust_code, cust_name, phone_number, cust_city, working_area, agent_code)`
   - `orders(order_num, order_amount, order_date, order_description, agent_code, cust_code)`
2. Open the `.sql` file in your SQL client (e.g., MySQL Workbench, pgAdmin).
3. Execute queries as needed or modify them to explore the data further.

## 📌 Note

This project is for learning purposes and showcases SQL skills suitable for data analysis or junior database roles.

---

Feel free to explore, modify, and use these queries to practice or demonstrate your own SQL capabilities!
