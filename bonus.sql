ALTER TABLE Seats ADD locked_until DATETIME;

UPDATE Seats
SET status='LOCKED',
locked_until = NOW() + INTERVAL 5 MINUTE
WHERE seat_id=4;
SELECT * FROM Seats WHERE seat_id=4;