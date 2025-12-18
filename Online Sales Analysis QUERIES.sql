SELECT
    YEAR(STR_TO_DATE(`Date`, '%d/%m/%Y')) AS order_year,
    MONTH(STR_TO_DATE(`Date`, '%d/%m/%Y')) AS order_month,
    ROUND(SUM(`Total Revenue`), 2) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%d/%m/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%d/%m/%Y'))
ORDER BY
    order_year,
    order_month;


CREATE TABLE monthly_sales_summary AS
SELECT
    YEAR(STR_TO_DATE(`Date`, '%d/%m/%Y')) AS order_year,
    MONTH(STR_TO_DATE(`Date`, '%d/%m/%Y')) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%d/%m/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%d/%m/%Y'));

SELECT * 
FROM monthly_sales_summary
ORDER BY order_year, order_month;
