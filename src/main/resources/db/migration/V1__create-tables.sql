CREATE TABLE IF NOT EXISTS users (
    user_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_type VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS customer (
    customer_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    full_name VARCHAR(100),
    address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS seller (
    seller_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    company_name VARCHAR(100),
    company_address VARCHAR(255),
    FOREIGN KEY (seller_id) REFERENCES users(user_id) ON DELETE CASCADE
);