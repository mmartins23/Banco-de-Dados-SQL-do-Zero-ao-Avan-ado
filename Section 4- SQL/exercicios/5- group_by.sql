SELECT gender, COUNT(*) as total_users
FROM studyingSQL.users
GROUP BY gender;