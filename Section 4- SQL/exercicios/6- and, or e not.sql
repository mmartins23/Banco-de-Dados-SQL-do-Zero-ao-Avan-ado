SELECT * 
FROM studyingSQL.users 
WHERE gender = 'Female' AND date_of_birth > '1990-01-01';


SELECT * 
FROM studyingSQL.users 
WHERE gender = 'Male' OR date_of_birth < '1985-01-01';


SELECT * 
FROM studyingSQL.users 
WHERE NOT gender = 'Male';