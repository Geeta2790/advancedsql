CREATE VIEW active_users AS SELECT id, username, email FROM users WHERE last_login >= NOW() - INTERVAL '30 days';