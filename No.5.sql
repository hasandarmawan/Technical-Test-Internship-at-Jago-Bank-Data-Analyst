SELECT product_line, brand, AVG(list_price) AS average_list_price 
FROM Transactions 
GROUP BY product_line, brand
ORDER BY average_list_price;




