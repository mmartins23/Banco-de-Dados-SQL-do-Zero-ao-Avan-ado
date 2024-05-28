SELECT *
FROM studyingSQL.purchases
WHERE price > 100 AND product = 'Monitor';

SELECT *
FROM studyingSQL.purchases
WHERE price > 100 OR product = 'Mouse';

SELECT *
FROM studyingSQL.purchases
WHERE price != 150;