CREATE PACKAGE recursion IS
  cycles Number;
END;

BEGIN
recursion.cycles := 10;
END;

CREATE OR REPLACE TRIGGER on_reservation_insert_insert_passenger
AFTER INSERT ON Reservation
BEGIN
recursion.cycles := recursion.cycles - 1;
IF recursion.cycles > 0 THEN
    INSERT INTO Passenger (ClientID, FavCarrierID, LoyaltyPoints, FlightsNo) values (1, 1, 1, 1);
ELSE
    recursion.cycles := 10;
END IF;
END;

CREATE OR REPLACE TRIGGER on_passenger_insert_insert_reservation
AFTER INSERT ON Passenger
BEGIN
IF recursion.cycles > 0 THEN
    INSERT INTO Reservation (FlightID, PassengerID, PaymentID, SeatNo) values (1, 1, 1, 1);
ELSE
    recursion.cycles := 10;
END IF;
END;

INSERT INTO Reservation (FlightID, PassengerID, PaymentID, SeatNo) values (1, 1, 1, 1);

INSERT INTO Passenger (ClientID, FavCarrierID, LoyaltyPoints, FlightsNo) values (1, 1, 1, 1);

SELECT * FROM Reservation
WHERE FlightID = 1
AND PassengerID = 1
AND PaymentID = 1
AND SeatNo = 1;

SELECT * FROM Passenger
WHERE ClientID = 1
AND FavCarrierID = 1;