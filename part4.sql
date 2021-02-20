# Write a query to list, for each product line, the total # of products sold from that product line.
# The first column should be Product Line and the second should be # Sold.
# Order by the second column descending.
SELECT p.productLine          'Product Line',
       SUM(o.quantityOrdered) '# Sold'
FROM products p
         JOIN orderdetails o USING (productCode)
GROUP BY 1
ORDER BY 2 DESC;