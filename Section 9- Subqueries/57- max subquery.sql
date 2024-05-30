SELECT *
FROM `compact-gadget-424114-m6.section7.payments` AS payments
WHERE amount > (
  SELECT MAX(amount)
  FROM `compact-gadget-424114-m6.section7.payments` AS payments
  WHERE client_id = 1
);