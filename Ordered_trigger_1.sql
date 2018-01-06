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
/