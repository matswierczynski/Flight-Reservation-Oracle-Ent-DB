CREATE OR REPLACE TRIGGER on_passenger_insert_insert_reservation
AFTER INSERT ON Passenger
BEGIN
IF recursion.cycles > 0 THEN
    INSERT INTO Reservation (FlightID, PassengerID, PaymentID, SeatNo) values (1, 1, 1, 1);
ELSE
    recursion.cycles := 10;
END IF;
END;
/