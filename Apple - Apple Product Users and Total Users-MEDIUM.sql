-- Find the number of Apple product users and the number of total users with a device and group the counts by language. Assume Apple products are only MacBook-Pro, iPhone 5s, and iPad-air. Output the language along with the total number of Apple users and users with any device. Order your results based on the number of total users in descending order.

CREATE TABLE playbook_events (
    user_id INT,
    occurred_at DATETIME,
    event_type VARCHAR(255),
    event_name VARCHAR(255),
    location VARCHAR(255),
    device VARCHAR(255)
);

INSERT INTO playbook_events (user_id, occurred_at, event_type, event_name, location, device) VALUES
(1, '2023-01-01 10:00:00', 'interaction', 'login', 'USA', 'MacBook-Pro'),
(2, '2023-01-02 11:00:00', 'interaction', 'purchase', 'USA', 'iPhone 5s'),
(3, '2023-01-02 12:00:00', 'interaction', 'login', 'Spain', 'iPad-air'),
(4, '2023-01-03 13:00:00', 'interaction', 'login', 'Japan', 'iPhone 5s'),
(5, '2023-01-03 14:00:00', 'interaction', 'purchase', 'France', 'Dell Laptop'),
(6, '2023-01-04 15:00:00', 'interaction', 'purchase', 'Russia', 'Samsung Phone'),
(7, '2023-01-04 16:00:00', 'interaction', 'login', 'USA', 'iPhone 5s'),
(8, '2023-01-05 17:00:00', 'interaction', 'login', 'France', 'MacBook-Pro'),
(9, '2023-01-06 18:00:00', 'interaction', 'login', 'Russia', 'HP Laptop');


CREATE TABLE playbook_users (
    user_id INT,
    created_at DATETIME,
    company_id INT,
    language VARCHAR(255),
    activated_at DATETIME,
    state VARCHAR(255)
);

INSERT INTO playbook_users (user_id, created_at, company_id, language, activated_at, state) VALUES
(1, '2022-01-01', 101, 'english', '2022-01-10', 'active'),
(2, '2022-02-01', 102, 'english', '2022-02-10', 'active'),
(3, '2022-02-01', 103, 'spanish', '2022-02-10', 'inactive'),
(4, '2022-03-01', 104, 'japanese', '2022-03-10', 'active'),
(5, '2022-03-01', 105, 'french', '2022-03-10', 'active'),
(6, '2022-04-01', 106, 'russian', '2022-04-10', 'active'),
(7, '2022-04-01', 107, 'english', '2022-04-10', 'active'),
(8, '2022-05-01', 108, 'french', '2022-05-10', 'inactive'),
(9, '2022-05-01', 109, 'russian', '2022-05-10', 'inactive');


-- Solution: 
-- select pu.language,
--       count(distinct pu.user_id) 
--       filter(where device in ('iphone 5s','ipad air','macbook pro')) as n_apple_users,
--       count(distinct pu.user_id) as n_total_users
-- from playbook_events pe
-- join playbook_users pu
-- on pe.user_id=pu.user_id
-- group by pu.language
-- order by n_total_users desc
