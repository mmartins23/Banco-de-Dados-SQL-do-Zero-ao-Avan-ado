-- Upper() e Lower ()
SELECT client_name, UPPER(client_name) AS upper_name, LOWER(client_name) AS lower_name
FROM section7.clients;

-- Concat()
SELECT client_name, CONCAT('Hello, ', client_name, '!') AS greeting
FROM section7.clients;

-- Substring()
SELECT client_name, SUBSTRING(client_name, 1, 3) AS short_name
FROM section7.clients;

-- length()
SELECT client_name, LENGTH(client_name) AS name_length
FROM section7.clients;

-- replace()
SELECT client_email, REPLACE(client_email, 'example', 'test') AS new_email
FROM section7.clients;

-- trim()
SELECT TRIM('   Alice   ') AS trimmed_name;

-- position()
SELECT client_email, POSITION('@' IN client_email) AS at_position
FROM section7.clients;
