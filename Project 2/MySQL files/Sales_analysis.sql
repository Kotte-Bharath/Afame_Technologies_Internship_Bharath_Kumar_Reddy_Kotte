-- Sales in specific Month
SELECT 
    orders.order_month,
    ROUND(SUM(order_details.sales), 0) AS sales
FROM
    order_details
        JOIN
    orders ON order_details.order_id = orders.order_id
GROUP BY orders.order_month
ORDER BY sales DESC;

-- Sales distribution by categories

SELECT 
    products.category AS Category,
    ROUND(SUM(order_details.sales), 2) AS Sales
FROM
    products
        JOIN
    order_details ON products.product_id = order_details.product_id
GROUP BY Category
ORDER BY Sales DESC;

-- Sales distribution by sub categories

SELECT 
    products.sub_category AS SubCategory,
    ROUND(SUM(order_details.sales), 2) AS Sales
FROM
    products
        JOIN
    order_details ON products.product_id = order_details.product_id
GROUP BY SubCategory
ORDER BY Sales DESC;

-- Top Selling products based on category

select 
	Top_Ranked_Products, 
    category 
from 
	(select 
		products.product_name as Top_Ranked_Products,
		products.category as Category, 
		rank() over(partition by products.category order by order_details.sales) as Ranks 
	from 
    products 
		join 
	order_details on products.product_id= order_details.product_id) as tbl 
where Ranks =1;