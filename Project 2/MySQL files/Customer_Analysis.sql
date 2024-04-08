-- Number of customers in each segment

SELECT 
    segment, COUNT(customer_id)
FROM
    customers
GROUP BY segment
ORDER BY COUNT(customer_id);

-- number of customers by State

select state as State, rank() over(order by No_of_customers desc ) as Ranks, No_of_customers from (SELECT 
    state, COUNT(*) AS No_of_customers
FROM
    customers
GROUP BY state) as tbl;

-- number of customers by country

select Country, Count, rank() over(order by Count desc) as Ranks from (SELECT 
    country AS Country, COUNT(*) AS Count
FROM
    customers
GROUP BY country) as tbl;
