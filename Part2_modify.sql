alter table PASSENGER modify
PARTITION BY RANGE (FlightsNo)
(
PARTITION Passenger_100 VALUES LESS THAN (100),
PARTITION Passenger_inf VALUES LESS THAN (MAXVALUE)
) Online;

create tablespace usb datafile 'D:\oradata\orcl\df1.dbf' size 500m;

Alter Table Passenger move Partition Passeneger_100 tablespace usb ONLINE;


create tablespace usb datafile 'D:\oradata\orcl\df1.dbf' size 500m;

ALter Table Passenger modify
PARTITION BY Hash (FlightsNo)
(Partition Passenger_1 TABLESPACE USERS,
Partition Passenger_2 TABLESPACE USERS)
ONLINE;

Alter Table Passenger move Partition Passenger_1 tablespace usb ONLINE;