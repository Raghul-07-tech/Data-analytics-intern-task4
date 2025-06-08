SELECT product_id, product_width
FROM product_hierarchy
WHERE product_width > (
    SELECT AVG(product_width)
    FROM product_hierarchy
);
