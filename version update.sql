SELECT * FROM Seats WHERE seat_id=3;
UPDATE Seats
SET status='BOOKED', version = version + 1
WHERE seat_id=3 AND version=0;