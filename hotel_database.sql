
-- ============================================
-- HOTEL MANAGEMENT SYSTEM
-- Database: Hotel_mgmt_system
-- ============================================

-- 1. CREATE DATABASE
CREATE DATABASE IF NOT EXISTS Hotel_mgmt_system;

USE Hotel_mgmt_system;


-- ============================================
-- 2. CUSTOMERS TABLE
-- ============================================

CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(200)
);


-- ============================================
-- 3. ROOMS TABLE
-- ============================================

CREATE TABLE IF NOT EXISTS Rooms (
    room_no INT PRIMARY KEY,
    room_type VARCHAR(50) NOT NULL,
    price_per_day DECIMAL(10,2) NOT NULL,
    capacity INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Available'
);


-- ============================================
-- 4. BOOKINGS TABLE
-- ============================================

CREATE TABLE IF NOT EXISTS Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    room_no INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    no_of_days INT NOT NULL,
    booking_status VARCHAR(20) DEFAULT 'Booked',

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),

    FOREIGN KEY (room_no)
        REFERENCES Rooms(room_no)
);


-- ============================================
-- 5. PAYMENTS TABLE
-- ============================================

CREATE TABLE IF NOT EXISTS Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(50) DEFAULT 'Pending',

    FOREIGN KEY (booking_id)
        REFERENCES Bookings(booking_id)
);


-- ============================================
-- 6. VERIFY TABLES
-- ============================================

SHOW TABLES;

DESC Customers;
DESC Rooms;
DESC Bookings;
DESC Payments;


-- ============================================
-- 6. DISPLAY RECORDS 
-- ============================================

SELECT * FROM Customers;
SELECT * FROM Rooms;
SELECT * FROM Bookings;
SELECT * FROM Payments;