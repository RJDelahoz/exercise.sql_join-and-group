# Write a query to display each customer’s name (asCustomer Name) alongside the name of the employee who is responsible
# for that customer’s orders.
# The employee name should be in a single Sales Rep column formatted as lastName, firstName. The output should be
# sorted alphabetically by customer name.
SELECT c.customerName                        'Customer Name',
       CONCAT(e.lastName, ', ', e.firstName) 'Sales Rep'
FROM customers c
         JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
ORDER BY 1;