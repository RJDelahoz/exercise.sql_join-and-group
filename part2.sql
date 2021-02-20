# Determine which products are most popular with our customers.
# For each product, list the total quantity ordered along with the total sale generated (total quantity ordered *
# priceEach) for that product.
# The column headers should be Product Name, Total # Ordered and Total Sale. List the products by Total Sale descending.
SELECT p.productName                        'Product Name',
       SUM(o.quantityOrdered)               'Total # Ordered',
       SUM(o.quantityOrdered * o.priceEach) 'Total Sale'
FROM products p
         JOIN orderdetails o USING (productCode)
GROUP BY 1
ORDER BY 3 DESC;
