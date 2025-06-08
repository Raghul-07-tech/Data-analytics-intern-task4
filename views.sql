CREATE OR REPLACE VIEW cluster_analysis AS
SELECT cluster_id,
       COUNT(*) AS product_count,
       AVG(product_length) AS avg_length,
       MAX(product_depth) AS max_depth
FROM product_hierarchy
GROUP BY cluster_id;

-- Use the view
SELECT * FROM cluster_analysis;
