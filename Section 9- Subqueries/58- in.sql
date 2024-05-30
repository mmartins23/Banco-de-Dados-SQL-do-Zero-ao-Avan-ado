SELECT *
FROM `compact-gadget-424114-m6.section7.clients` AS clients
WHERE client_id IN (
  SELECT client_id
  FROM `compact-gadget-424114-m6.section7.payments` AS payments
  GROUP BY client_id
  HAVING COUNT(*) > 1
);