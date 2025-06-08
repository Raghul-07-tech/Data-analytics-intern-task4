SELECT ph.product_id, ph.product_length, pi.product_name
FROM product_hierarchy ph
RIGHT JOIN product_info pi ON ph.product_id = pi.product_id;
