# Write a query which lists order status and the # of orders with that status.
# Column headers should be Order Status and # Orders.
# Sort alphabetically by status.
SELECT status        'Order Status',
       COUNT(status) '# Orders'
FROM orders
GROUP BY 1
ORDER BY 1;