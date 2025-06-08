SELECT cluster_id,
       SUM(product_length) AS total_length,
       AVG(product_width) AS average_width
FROM product_hierarchy
GROUP BY cluster_id
ORDER BY total_length DESC;
