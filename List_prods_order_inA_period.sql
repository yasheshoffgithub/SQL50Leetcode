# Write your MySQL query statement below
SELECT
    P.product_name,
    SUM(O.unit) AS unit
FROM Orders AS O
LEFT JOIN Products AS P
    ON O.product_id = P.product_id
WHERE YEAR(O.order_date)=2020 AND MONTH(O.order_date)=02
GROUP BY O.product_id
HAVING unit >=100;