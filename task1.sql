SELECT product_name,company_name FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
ORDER BY product_name,company_name