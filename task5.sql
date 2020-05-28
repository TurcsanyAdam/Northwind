SELECT suppliers.company_name, products.product_id, products.unit_price FROM products
LEFT JOIN suppliers ON suppliers.supplier_id = products.supplier_id
WHERE products.unit_price=(SELECT MAX(products.unit_price) FROM products)
GROUP BY suppliers.company_name,products.product_id 
ORDER BY suppliers.company_name