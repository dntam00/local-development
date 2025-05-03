CREATE DATABASE IF NOT EXISTS product;

-- Create user with password
CREATE USER IF NOT EXISTS 'app_user'@'%' IDENTIFIED BY 'password';

-- Grant privileges to the user for the database
GRANT ALL PRIVILEGES ON product.* TO 'app_user'@'%';

-- Apply the privileges
FLUSH PRIVILEGES;
