# Data-analytics-intern-task4

README — Ecommerce SQL Analysis Tasks
=====================================

Project Title:
--------------
Ecommerce Product Data Analysis using PostgreSQL

Dataset Used:
-------------
Table: product_hierarchy
Source: CSV imported into PostgreSQL via pgAdmin 4

Sample Columns:
- product_id (TEXT)
- product_length (DOUBLE PRECISION)
- product_width (DOUBLE PRECISION)
- product_depth (DOUBLE PRECISION)
- cluster_id (TEXT)
- hierarchy1_id to hierarchy5_id (TEXT)

Objective:
----------
To practice and understand SQL operations like querying, filtering, aggregation, joins, views, indexing, and subqueries using PostgreSQL on a real-world eCommerce product dataset.

Tasks Performed:
================

A. Basic SQL Operations
-----------------------
Used SELECT, WHERE, ORDER BY, and GROUP BY to filter and sort product data.

Example:
SELECT product_id, product_length
FROM product_hierarchy
WHERE cluster_id = '5.0'
ORDER BY product_length DESC;

B. Joins (INNER, LEFT, RIGHT)
-----------------------------
Used an additional table `product_info` for joining.

LEFT JOIN Example:
SELECT ph.product_id, ph.product_length, pi.product_name
FROM product_hierarchy ph
LEFT JOIN product_info pi ON ph.product_id = pi.product_id;

C. Subqueries
-------------
Used subqueries to compare product features with dataset averages.

Example:
SELECT product_id, product_width
FROM product_hierarchy
WHERE product_width > (
    SELECT AVG(product_width)
    FROM product_hierarchy
);

D. Aggregate Functions (SUM, AVG, MAX)
--------------------------------------
Calculated statistics per cluster_id.

Example:
SELECT cluster_id,
       SUM(product_length) AS total_length,
       AVG(product_width) AS average_width
FROM product_hierarchy
GROUP BY cluster_id;

E. Create Views for Analysis
----------------------------
Created a summary view.

Example:
CREATE OR REPLACE VIEW cluster_analysis AS
SELECT cluster_id,
       COUNT(*) AS product_count,
       AVG(product_length) AS avg_length,
       MAX(product_depth) AS max_depth
FROM product_hierarchy
GROUP BY cluster_id;

F. Query Optimization Using Indexes
-----------------------------------
Created indexes for faster search/filter operations.

Example:
CREATE INDEX idx_cluster_id ON product_hierarchy(cluster_id);
CREATE INDEX idx_product_id ON product_hierarchy(product_id);

Outcome Achieved:
-----------------
- Practiced all major SQL operations.
- Understood JOIN types and subqueries.
- Created reusable views and improved performance with indexes.
- Built hands-on experience using pgAdmin 4 for real SQL analysis.

