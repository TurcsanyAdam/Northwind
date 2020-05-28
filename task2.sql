SELECT suppliers.company_name as Company, COUNT(*) NumberOfProducts from products
JOIN suppliers ON products.supplier_ID = suppliers.supplier_ID
GROUP BY suppliers.supplier_id
ORDER BY NumberOfProducts desc,Company