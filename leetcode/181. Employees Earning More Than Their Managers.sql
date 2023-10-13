SELECT e.name AS "Employee" FROM employee AS m
INNER JOIN employee AS e ON m.id = e.managerID
WHERE m.salary < e.salary;
