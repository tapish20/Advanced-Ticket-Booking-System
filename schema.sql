DROP DATABASE IF EXISTS ticket_db;
CREATE DATABASE ticket_db;
USE ticket_db;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    total_seats INT
);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    show_id INT,
    seat_number VARCHAR(10),
    status VARCHAR(20) DEFAULT 'AVAILABLE',
    version INT DEFAULT 0,
    FOREIGN KEY (show_id) REFERENCES Shows(show_id)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    seat_id INT,
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

-- Sample Data
INSERT INTO Users(name,email) VALUES
('Manjari','manjari@gmail.com'),
('Ravi','ravi@gmail.com');

INSERT INTO Shows(title,total_seats) VALUES
('Movie Show',5);

INSERT INTO Seats(show_id,seat_number) VALUES
(1,'A1'),(1,'A2'),(1,'A3'),(1,'A4'),(1,'A5');