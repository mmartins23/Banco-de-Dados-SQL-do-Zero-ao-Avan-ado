SELECT cli.client_id,
       cli.client_name,
       SUM(pay.amount) AS total
FROM `compact-gadget-424114-m6.section7.payments` pay
JOIN `compact-gadget-424114-m6.section7.clients` cli USING(client_id)
GROUP BY cli.client_id, cli.client_name
HAVING total >= 650
ORDER BY total DESC;