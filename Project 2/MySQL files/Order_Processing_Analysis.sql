-- Average shipping cost per order

SELECT 
    AVG(shipping_cost)
FROM
    orders;
    
-- Percentage of orders shipped via different shipping modes.

SELECT 
    ship_mode AS Shipping_Mode,
    COUNT(order_id) AS Number_of_Orders
FROM
    orders
GROUP BY Shipping_Mode;

-- Order processing time (time between order date and ship date).