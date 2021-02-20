# For each employee who represents customers, output the total # of orders that employee’s customers have placed
# alongside the total sale amount of those orders.
# The employee name should be output as a single column named Sales Rep formatted as lastName, firstName.
# The second column should be titled # Orders and the third should be Total Sales.
# Sort the output by Total Sales descending.
# Only (and all) employees with the job title Sales Rep should be included in the output, and if the employee made no
# sales the Total Sales should display as 0.00.
SELECT CONCAT(e.lastName, ', ', e.firstName) 'Sales Rep',
       COUNT(quantityOrdered)                '# Orders',
       IF(
               quantityOrdered IS NULL OR quantityOrdered = 0,
               0.00,
               SUM(quantityOrdered * priceEach)
           )                                 'Total Sales'
FROM customers c
         RIGHT JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
         LEFT JOIN orders USING (customerNumber)
         LEFT JOIN orderdetails USING (orderNumber)
WHERE jobTitle = 'Sales Rep'
GROUP BY 1
ORDER BY 3 DESC;
