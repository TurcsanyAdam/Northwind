SELECT suppliers.company_name AS Company, COUNT(products.supplier_ID) AS NumberOfProducts FROM products
JOIN suppliers ON products.supplier_ID = suppliers.supplier_ID
GROUP BY suppliers.supplier_id
HAVING COUNT(products.supplier_ID) >= 5
ORDER BY NumberOfProducts desc,Company