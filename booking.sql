START TRANSACTION;

SELECT status FROM Seats WHERE seat_id = 1 FOR UPDATE;

UPDATE Seats 
SET status = 'BOOKED' 
WHERE seat_id = 1 AND status = 'AVAILABLE';

INSERT INTO Bookings(user_id, seat_id, status)
VALUES (1,1,'CONFIRMED');

COMMIT;