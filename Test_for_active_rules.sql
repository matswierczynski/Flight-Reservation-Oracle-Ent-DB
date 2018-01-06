--for Trigger 1
INSERT INTO PASSENGER (ClientID, FavCarrierID, LoyaltyPoints, FlightsNo) values (100, 100, 100, 100);
SELECT * 
FROM PASSENGER
WHERE ClientID = 100
  AND FavCarrierID = 100;
  

 --for constraint check
insert into Carrier (Name, Rating) values ('test', 101);
UPDATE Carrier
SET Rating = 101
WHERE NAME = 'test';


--for trigger 3
alter session set nls_date_format = 'MM-DD-YYYY';
insert into Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate) values (33, 63, 332, 669, '8/28/2017', '3/9/2016');

--for triggers of controlled execution
insert into Reservation (FlightID, PassengerID, PaymentID, SeatNo) values (1, 1, 1, 1);

SELECT * FROM Log;

--for self - triggering events
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