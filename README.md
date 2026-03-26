📊 Database Engineering & Sales Analytics System (Capstone Project)
📌 Overview

This project demonstrates the design and implementation of a relational database system for a restaurant business (Little Lemon), combined with SQL analytics and Tableau-based data visualization.

The goal was to build an end-to-end data solution including:

Database design (ER modeling)
SQL query development
Stored procedures for operations
Data analysis and reporting
Interactive dashboards
🗄️ Database Design
Designed a normalized relational database using MySQL
Implemented key entities:
Customers
Orders
Bookings
Staff
Menu
Order Delivery Status
Established relationships using foreign key constraints to maintain referential integrity

👉 Example: Orders linked to Customers, Bookings, Staff, and Menu

⚙️ SQL Implementation
🔹 Core SQL Concepts Used
Joins (INNER JOIN across multiple tables)
Aggregations (GROUP BY, HAVING)
Subqueries
Views
Prepared statements
Stored procedures
🔹 Example: Virtual Table (View)
SELECT customers.CustomerID, customers.FullName, orders.OrderID, orders.TotalCost, menus.Courses
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN menus ON menus.MenuID = orders.MenuID;
🔹 Example: Subquery
SELECT *
FROM Menus
WHERE MenuID IN (
    SELECT MenuID
    FROM Orders
    GROUP BY MenuID
    HAVING COUNT(*) > 2
);
🔹 Stored Procedures

Implemented operational procedures such as:

AddBooking
UpdateBooking
CancelBooking
CancelOrder

Example:

CREATE PROCEDURE UpdateBooking (
    IN booking_id INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = newBookingDate
    WHERE BookingID = booking_id;
END;

👉 These simulate real-world transactional workflows

📈 Data Visualization (Tableau)

Built interactive dashboards to analyze sales and performance trends.

🔹 Key Insights
Sales trends across cuisines and years
Customer-level sales distribution and purchasing behavior
Profit trends showing performance changes over time
Customer segmentation using bubble chart visualization
📊 Dashboard Features
Year-over-year sales analysis
Customer sales comparison
Profit trend tracking
Interactive filtering and segmentation
🧠 Key Learnings
Designing scalable relational databases
Writing efficient SQL queries for analytics
Implementing ETL-style data transformations
Building dashboards for business decision-making
Connecting backend data systems with visualization tools
🛠️ Tools & Technologies
MySQL Workbench
SQL
Tableau
GitHub
🚀 Business Impact

This system enables:

Efficient data storage and retrieval
Real-time operational workflows
Insight generation for sales and performance
Data-driven decision-making
📂 Repository Structure
/SQL Scripts
/ER Diagram
/Tableau Dashboards
/Results & Outputs
📌 Future Improvements
Integration with real-time data pipelines
Deployment using cloud database services
API layer for application integration
