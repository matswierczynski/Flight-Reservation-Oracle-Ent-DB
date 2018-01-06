SET SERVEROUTPUT ON

variable time1 number
variable time2 number
variable time3 number
variable time4 number
variable time5 number

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

variable n number
exec :n := dbms_utility.get_time

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

alter system flush buffer_cache;
alter system flush shared_pool;
SELECT FirstName, LastName, Country.Name AS Country, Carrier.Name AS FavouriteCarrier
    FROM Client, Passenger, Reservation, Carrier, Flight, Airport, Country
    WHERE FlightID IN (SELECT Flight.ID
                       FROM Flight
                       WHERE DepDate
                           BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                       )
        AND Client.ID = Passenger.ClientID
        AND Passenger.ID = Reservation.PassengerID
        AND Passenger.FavCarrierID = Carrier.ID
        AND Reservation.FlightID = Flight.ID
        AND Flight.DepAirportID = Airport.ID
        AND Airport.CountryID = Country.ID
        AND Country.ID IN (SELECT ID FROM Country
                           WHERE Name = 'Germany' OR Name = 'France'
                           )
        AND PassengerID IN (SELECT PassengerID
                            FROM Reservation
                            WHERE FlightID IN (SELECT Flight.ID
                                               FROM Flight
                                               WHERE DepDate
                                                   BETWEEN TO_DATE('01-01-2014', 'DD-MM-YYYY') AND TO_DATE('01-01-2017', 'DD-MM-YYYY')
                                               )
                            GROUP BY PassengerID
                            HAVING COUNT(*) > 2
                            )
    ORDER BY Country
;

exec :time1 := (dbms_utility.get_time-:n)/1000

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

variable n number
exec :n := dbms_utility.get_time

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT 'Card' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 1
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )

UNION ALL

SELECT 'Cash' AS PaymentMethod, SUM(AmountPaid) AS TotalAmountPaid, COUNT(*) AS NumberOfPayments, SUM(AmountPaid) / COUNT(*) AS Average 
    FROM Payment
    WHERE Payment.ID IN (SELECT Payment.ID
                         FROM Payment, Airplane, Reservation, Flight
                         WHERE Payment.IsCardPayment = 0
                             AND Payment.ID = Reservation.PaymentID
                             AND Reservation.FlightID = Flight.ID
                             AND Flight.AirplaneID = Airplane.ID
                             AND Airplane.ID IN (SELECT ID
                                                 FROM Airplane
                                                 WHERE Brand = 'Audi' OR Brand = 'BMW'
                                                )
                             AND Flight.ID IN (SELECT ID
                                               FROM Flight
                                               WHERE ArrDate
                                                   BETWEEN TO_DATE('01-01-2015', 'DD-MM-YYYY') AND TO_DATE('01-01-2016', 'DD-MM-YYYY')
                                               )
                        )
;

exec :time2 := (dbms_utility.get_time-:n)/1000

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

variable n number
exec :n := dbms_utility.get_time

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

alter system flush buffer_cache;
alter system flush shared_pool;

SELECT FirstName, LastName, TelNumber
FROM Country, Client, Passenger, Reservation
WHERE CountryID IN (SELECT ID
                    FROM Country
                    WHERE Country.Name IN (SELECT Country.Name
                                           FROM Country, Client, Passenger, Reservation
                                           WHERE Country.ID = Client.CountryID
                                               AND Client.ID = Passenger.ClientID
                                               AND Passenger.ID = Reservation.PassengerID
                                               AND Reservation.PaymentID IN (SELECT ID
                                                                             FROM Payment
                                                                             WHERE IsCardPayment = 1
                                                                                 AND AmountPaid > 6000
                                                                            )
                                               AND Passenger.FlightsNo > 4
                                           GROUP BY Country.Name
                                           ORDER BY COUNT(*) DESC
                                           FETCH FIRST 1 ROW ONLY
                                           )
                    )
    AND Country.ID = Client.CountryID
    AND Client.ID = Passenger.ClientID
    AND Passenger.ID = Reservation.PassengerID
    AND Reservation.PaymentID IN (SELECT ID
                                  FROM Payment
                                  WHERE IsCardPayment = 1
                                  AND AmountPaid > 6000
                                  )
    AND Passenger.FlightsNo > 4
;

exec :time3 := (dbms_utility.get_time-:n)/1000

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

variable n number
exec :n := dbms_utility.get_time

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

savepoint t4;

alter system flush buffer_cache;
alter system flush shared_pool;

INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 50, 500, 350, TO_DATE('02-02-2016', 'DD-MM-YYYY'), TO_DATE('03-02-2016', 'DD-MM-YYYY'))
;
    
INSERT INTO Flight (CarrierID, AirplaneID, DepAirportID, DestAirportID, DepDate, ArrDate)
    VALUES (50, 34, 500, 234, TO_DATE('03-02-2016', 'DD-MM-YYYY'), TO_DATE('04-02-2016', 'DD-MM-YYYY'))
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10,
        FavCarrierID = (SELECT ID
                        FROM (SELECT ID
                              FROM Carrier
                              ORDER BY Rating DESC
                              )
                        WHERE ROWNUM = 1
                        )
    WHERE Passenger.ID IN (SELECT PassengerID
                           FROM Reservation
                           WHERE Reservation.FlightID IN (SELECT ID
                                                          FROM Flight
                                                          WHERE Flight.DepDate
                                                              BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                                          )
                           )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 50
                        AND DepAirportID = 500
                        AND DestAirportID = 350
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('15-01-2016', 'DD-MM-YYYY')
                                   )
;

UPDATE Reservation
    SET FlightID = (SELECT ID
                    FROM Flight
                    WHERE CarrierID = 50
                        AND AirplaneID = 34
                        AND DepAirportID = 500
                        AND DestAirportID = 234
                    )
    WHERE Reservation.FlightID IN (SELECT ID
                                   FROM Flight
                                   WHERE Flight.DepDate
                                       BETWEEN TO_DATE('16-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY')
                                   )
;

DELETE FROM Flight
    WHERE Flight.DepDate
        BETWEEN TO_DATE('01-01-2016', 'DD-MM-YYYY') AND TO_DATE('01-02-2016', 'DD-MM-YYYY');
		
rollback to t4;

exec :time4 := (dbms_utility.get_time-:n)/1000

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

variable n number
exec :n := dbms_utility.get_time

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

savepoint t5;

alter system flush buffer_cache;
alter system flush shared_pool;

UPDATE Airplane
    SET Brand = 'Mercedes',
        Model = 'CLS',
        SeatsNo = 200
    WHERE Brand = 'Fiat' OR Brand = 'Opel' OR Brand = 'Ford' OR Brand = 'Citroen' OR Brand = 'Renault'
;

DELETE FROM Airplane
    WHERE ID NOT IN (SELECT AirplaneID
                     FROM Flight
                    )
        AND (Brand = 'Nissan' OR Brand = 'Toyota')
;

UPDATE Carrier
    SET Rating = Rating + 10
    WHERE Rating < 90
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Mercedes'
                                    )
               )
;

UPDATE Carrier
    SET Rating = Rating - 10
    WHERE Rating > 10
    AND ID IN (SELECT CarrierID
               FROM Flight
               WHERE AirplaneID IN (SELECT ID
                                    FROM AIRPLANE
                                    WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                    )
               )
;

UPDATE Passenger
    SET LoyaltyPoints = LoyaltyPoints + 10
    WHERE ID IN (SELECT PassengerID
                 FROM Reservation
                 WHERE FlightID IN (SELECT ID
                                    FROM Flight
                                    WHERE AirplaneID IN (SELECT ID
                                                         FROM Airplane
                                                         WHERE Brand = 'Nissan' OR Brand = 'Toyota'
                                                        )
                                    )
                )
;

rollback to t5;

exec :time5 := (dbms_utility.get_time-:n)/1000

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

exec dbms_output.put_line('TRANSACTION 1 AVERAGE TIME: ' || :time1 || ' SECONDS' );
exec dbms_output.put_line('TRANSACTION 2 AVERAGE TIME: ' || :time2 || ' SECONDS' );
exec dbms_output.put_line('TRANSACTION 3 AVERAGE TIME: ' || :time3 || ' SECONDS' );
exec dbms_output.put_line('TRANSACTION 4 AVERAGE TIME: ' || :time4 || ' SECONDS' );
exec dbms_output.put_line('TRANSACTION 5 AVERAGE TIME: ' || :time5 || ' SECONDS' );
exec dbms_output.put_line('ALL TRANSACTIONS AVERAGE TIME: ' || (:time1 + :time2 + :time3 + :time4 + :time5) || ' SECONDS' );