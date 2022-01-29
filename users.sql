SELECT * FROM greentravels.users;

SELECT username, register_date, balance FROM greentravels.users
ORDER BY  balance ASC, register_date DESC,  username ASC
LIMIT 6;

SELECT user_id, username, balance, city_id FROM greentravels.users 
WHERE city_id =2
ORDER BY balance DESC
LIMIT 1;

SELECT username, balance, is_completed FROM greentravels.users
RIGHT JOIN rents ON users.user_id = rents.user_id
WHERE is_completed = 0
ORDER BY balance DESC, rents.user_id asc;

SELECT * FROM greentravels.users
ORDER BY balance DESC;
