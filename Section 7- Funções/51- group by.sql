SELECT client_id,
       SUM(amount) AS total
 FROM `compact-gadget-424114-m6.section7.payments` 
 GROUP BY client_id
 ORDER BY total DESC;