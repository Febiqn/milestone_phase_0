CREATE DATABASE IF NOT EXISTS login_and_register;
USE login_and_register;

-- Tabel untuk menyimpan data akun user DDL
CREATE TABLE IF NOT EXISTS user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- DML login and register
INSERT INTO user (name, email, password) VALUES 
('Admin Tiv', 'admin@tiv.com', 'admin123'),
('Budi Santoso', 'budi@gmail.com', 'budi789'),
('Siti Aminah', 'siti@yahoo.com', 'sitioke'),
('Andi Wijaya', 'andi@outlook.com', 'andipass'),
('Dewi Lestari', 'dewi@gmail.com', 'dewicantik');


-- Tabel untuk menyimpan pesan dari form kontak
CREATE TABLE IF NOT EXISTS messages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sender_name VARCHAR(255) NOT NULL,
    sender_email VARCHAR(255) NOT NULL,
    message_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- DML contact
INSERT INTO messages (sender_name, sender_email, message_text) VALUES 
('Andi Wijaya', 'andi@outlook.com', 'Berapa biaya kirim ke Bekasi?'),
('Rina Rose', 'rina@gmail.com', 'Apakah bisa jemput paket ke rumah?'),
('Joko Susilo', 'joko@gmail.com', 'Paket saya dengan resi TIV001 belum sampai.'),
('Sari Putri', 'sari@perusahaan.com', 'Saya ingin bekerja sama untuk pengiriman rutin.'),
('Budi Santoso', 'budi@gmail.com', 'Terima kasih, layanannya sangat cepat!');



