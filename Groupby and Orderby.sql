SELECT cluster_id, COUNT(*) AS total_products
FROM product_hierarchy
GROUP BY cluster_id
ORDER BY total_products DESC;
