SELECT *
FROM studyingSQL.purchases
WHERE price > 100
AND product = 'Monitor';


SELECT *
FROM studyingSQL.purchases
WHERE price < 50
OR product = 'Webcam';


SELECT *
FROM studyingSQL.purchases
WHERE NOT product = 'Laptop';
