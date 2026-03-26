<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Database Engineering & Sales Analytics System</title>
</head>
<body>

  <h1>📊 Database Engineering &amp; Sales Analytics System (Capstone Project)</h1>

  <h2>📌 Overview</h2>
  <p>
    This project demonstrates the design and implementation of a relational database system
    for a restaurant business (Little Lemon), combined with SQL analytics and Tableau-based
    data visualization.
  </p>
  <p>The goal was to build an end-to-end data solution including:</p>
  <ul>
    <li>Database design (ER modeling)</li>
    <li>SQL query development</li>
    <li>Stored procedures for operations</li>
    <li>Data analysis and reporting</li>
    <li>Interactive dashboards</li>
  </ul>

  <h2>🗄️ Database Design</h2>
  <ul>
    <li>Designed a normalized relational database using MySQL</li>
    <li>Implemented key entities:
      <ul>
        <li>Customers</li>
        <li>Orders</li>
        <li>Bookings</li>
        <li>Staff</li>
        <li>Menu</li>
        <li>Order Delivery Status</li>
      </ul>
    </li>
    <li>Established relationships using foreign key constraints to maintain referential integrity</li>
  </ul>
  <p><strong>Example:</strong> Orders linked to Customers, Bookings, Staff, and Menu</p>

  <h2>⚙️ SQL Implementation</h2>

  <h3>🔹 Core SQL Concepts Used</h3>
  <ul>
    <li>Joins (INNER JOIN across multiple tables)</li>
    <li>Aggregations (GROUP BY, HAVING)</li>
    <li>Subqueries</li>
    <li>Views</li>
    <li>Prepared statements</li>
    <li>Stored procedures</li>
  </ul>

  <h3>🔹 Example: Virtual Table (View)</h3>
  <pre><code>SELECT customers.CustomerID, customers.FullName, orders.OrderID, orders.TotalCost, menus.Courses
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN menus ON menus.MenuID = orders.MenuID;</code></pre>

  <h3>🔹 Example: Subquery</h3>
  <pre><code>SELECT *
FROM Menus
WHERE MenuID IN (
    SELECT MenuID
    FROM Orders
    GROUP BY MenuID
    HAVING COUNT(*) &gt; 2
);</code></pre>

  <h3>🔹 Stored Procedures</h3>
  <p>Implemented operational procedures such as:</p>
  <ul>
    <li>AddBooking</li>
    <li>UpdateBooking</li>
    <li>CancelBooking</li>
    <li>CancelOrder</li>
  </ul>

  <p>Example:</p>
  <pre><code>CREATE PROCEDURE UpdateBooking (
    IN booking_id INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = newBookingDate
    WHERE BookingID = booking_id;
END;</code></pre>

  <p><strong>These simulate real-world transactional workflows.</strong></p>

  <h2>📈 Data Visualization (Tableau)</h2>
  <p>
    Built interactive dashboards to analyze sales and performance trends.
  </p>

  <h3>🔹 Key Insights</h3>
  <ul>
    <li>Sales trends across cuisines and years</li>
    <li>Customer-level sales distribution and purchasing behavior</li>
    <li>Profit trends showing performance changes over time</li>
    <li>Customer segmentation using bubble chart visualization</li>
  </ul>

  <h2>📊 Dashboard Features</h2>
  <ul>
    <li>Year-over-year sales analysis</li>
    <li>Customer sales comparison</li>
    <li>Profit trend tracking</li>
    <li>Interactive filtering and segmentation</li>
  </ul>

  <h2>🧠 Key Learnings</h2>
  <ul>
    <li>Designing scalable relational databases</li>
    <li>Writing efficient SQL queries for analytics</li>
    <li>Implementing ETL-style data transformations</li>
    <li>Building dashboards for business decision-making</li>
    <li>Connecting backend data systems with visualization tools</li>
  </ul>

  <h2>🛠️ Tools &amp; Technologies</h2>
  <ul>
    <li>MySQL Workbench</li>
    <li>SQL</li>
    <li>Tableau</li>
    <li>GitHub</li>
  </ul>

  <h2>🚀 Business Impact</h2>
  <p>This system enables:</p>
  <ul>
    <li>Efficient data storage and retrieval</li>
    <li>Real-time operational workflows</li>
    <li>Insight generation for sales and performance</li>
    <li>Data-driven decision-making</li>
  </ul>

  <h2>📂 Repository Structure</h2>
  <pre><code>/SQL Scripts
/ER Diagram
/Tableau Dashboards
/Results &amp; Outputs</code></pre>

  <h2>📌 Future Improvements</h2>
  <ul>
    <li>Integration with real-time data pipelines</li>
    <li>Deployment using cloud database services</li>
    <li>API layer for application integration</li>
  </ul>

</body>
</html>
