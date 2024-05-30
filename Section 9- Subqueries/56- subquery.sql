SELECT *
FROM `compact-gadget-424114-m6.section7.payments` AS payments
WHERE amount > (
  SELECT AVG(amount)
  FROM `compact-gadget-424114-m6.section7.payments` AS payments
);
