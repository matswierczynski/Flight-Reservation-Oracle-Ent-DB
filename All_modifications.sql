--3_index_b_tree
create index depDateIdx on Flight(DEPDATE);
--5_index_btimap
create Bitmap index AirBrIdx on Airplane(BRAND);
--4_composite_index
create index PaymentIdx on Payment(ID, AmountPaid, isCardPayment);

--patrition_range_on_payment


create tablespace usb datafile 'D:\oradata\orcl\df1.dbf' size 500m;


alter table PAYMENT modify
PARTITION BY RANGE (AmountPaid)
(
PARTITION Payment_2000 VALUES LESS THAN (2000),
PARTITION Payment_4000 VALUES LESS THAN (4000),
PARTITION Payment_6000 VALUES LESS THAN (6000),
PARTITION Payment_inf VALUES LESS THAN (MAXVALUE)
) Online;

Alter Table Payment move Partition Payment_6000 tablespace usb ONLINE;
Alter Table Payment move Partition Payment_inf tablespace usb ONLINE;

--partition_by_hash_on_Passenger


ALter Table Passenger modify
PARTITION BY Hash (FlightsNo)
(Partition Passenger_1 TABLESPACE USERS,
Partition Passenger_2 TABLESPACE USERS)
ONLINE;

Alter Table Passenger move Partition Passenger_1 tablespace usb ONLINE;
