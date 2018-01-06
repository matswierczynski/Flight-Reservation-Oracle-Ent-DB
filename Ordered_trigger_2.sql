create or replace TRIGGER on_reservation_2
AFTER INSERT OR UPDATE ON Reservation
FOR EACH ROW
FOLLOWS on_reservation_1
BEGIN
INSERT INTO Log (TriggerOnReservation) VALUES ('on_reservation_2');
END;
/