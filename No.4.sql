SELECT 
    cd.wealth_segment,
    t.order_status,
    COUNT(DISTINCT t.customer_id) AS customer_count
FROM 
    Transactions t
JOIN 
    Customer_Demographics cd
ON 
    t.customer_id = cd.customer_id
WHERE 
    t.order_status = 'Approved'
GROUP BY 
    cd.wealth_segment, t.order_status
ORDER BY 
	customer_count DESC;
	


