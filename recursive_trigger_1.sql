CREATE PACKAGE recursion IS
  cycles Number;
END;
/
BEGIN
recursion.cycles := 10;
END;
/
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
/