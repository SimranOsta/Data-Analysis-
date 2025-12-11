-- Users table
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);

-- Orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    amount REAL,
    order_date TEXT,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO users (user_id, name, city) VALUES
(1, 'Amit', 'Delhi'),
(2, 'Simran', 'Mumbai'),
(3, 'Rahul', 'Chennai'),
(4, 'Neha', 'Delhi');

INSERT INTO orders (order_id, user_id, amount, order_date) VALUES
(101, 1, 500, '2025-01-01'),
(102, 2, 1500, '2025-01-02'),
(103, 1, 800, '2025-01-03'),
(104, 3, 200, '2025-01-03'),
(105, 4, 1200, '2025-01-04');

-- WHERE
SELECT * FROM orders
WHERE amount > 500;

-- HAVING
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 1000;

-- INNER JOIN
SELECT users.name, orders.amount
FROM users
INNER JOIN orders ON users.user_id = orders.user_id;

-- LEFT JOIN
SELECT users.name, orders.amount
FROM users
LEFT JOIN orders ON users.user_id = orders.user_id;

-- RIGHT JOIN is NOT supported so we use reverse left join
SELECT users.name, orders.amount
FROM orders
LEFT JOIN users ON users.user_id = orders.user_id;

SELECT 
    AVG(user_total) AS avg_revenue_per_user
FROM (
    SELECT user_id, SUM(amount) AS user_total
    FROM orders
    GROUP BY user_id
);

-- Users who spent more than average
SELECT name FROM users
WHERE user_id IN (
    SELECT user_id
    FROM orders
    GROUP BY user_id
    HAVING SUM(amount) > (
        SELECT AVG(amount) FROM orders
    )
);

CREATE VIEW user_spending AS
SELECT users.name, SUM(orders.amount) AS total_spent
FROM users
LEFT JOIN orders ON users.user_id = orders.user_id
GROUP BY users.user_id;

SELECT * FROM user_spending;

SELECT 
    user_id,
    IFNULL(SUM(amount), 0) AS total_spent
FROM orders
GROUP BY user_id;


CREATE INDEX idx_user_id ON orders(user_id);
