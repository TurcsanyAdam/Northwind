SELECT customers.company_name, STRING_AGG(CAST(order_ID as TEXT) , ', ') as all_orders FROM customers
LEFT JOIN orders ON orders.customer_ID = customers.customer_ID
GROUP BY customers.company_name
ORDER BY customers.company_name