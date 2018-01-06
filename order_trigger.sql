DROP TABLE Log;
CREATE TABLE Log (
    TriggerOnReservation VARCHAR2(50)
);

create or replace TRIGGER on_reservation_1
AFTER INSERT OR UPDATE ON Reservation
FOR EACH ROW
BEGIN
INSERT INTO Log (TriggerOnReservation) VALUES ('on_reservation_1');
END;

create or replace TRIGGER on_reservation_2
AFTER INSERT OR UPDATE ON Reservation
FOR EACH ROW
FOLLOWS on_reservation_1
BEGIN
INSERT INTO Log (TriggerOnReservation) VALUES ('on_reservation_2');
END;

create or replace TRIGGER on_reservation_3
AFTER INSERT OR UPDATE ON Reservation
FOR EACH ROW
FOLLOWS on_reservation_2
BEGIN
INSERT INTO Log (TriggerOnReservation) VALUES ('on_reservation_3');
END;

insert into Reservation (FlightID, PassengerID, PaymentID, SeatNo) values (1, 1, 1, 1);

SELECT * FROM Log;