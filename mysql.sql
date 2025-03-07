CREATE DATABASE IF NOT EXISTS clients;
USE clients;

CREATE TABLE IF NOT EXISTS clients (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    identification BIGINT NOT NULL UNIQUE,
    name VARCHAR(255),
    last_name VARCHAR(255),
    account_type ENUM('SAVINGS', 'CHECKING') NOT NULL
);

CREATE TABLE IF NOT EXISTS accounts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    number VARCHAR(255) NOT NULL UNIQUE,
    user_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    type ENUM('SAVINGS', 'CHECKING') NOT NULL,
    amount DOUBLE NOT NULL,
    security_number INT NOT NULL,
    CONSTRAINT fk_accounts_clients FOREIGN KEY (user_id) REFERENCES clients(identification) ON DELETE CASCADE
);
