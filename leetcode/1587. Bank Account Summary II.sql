SELECT u.name, SUM(t.amount) AS balance FROM Users AS u
JOIN Transactions AS t USING (account)   
GROUP BY   u.name
HAVING SUM(t.amount) > 10000 ;
