alter table PAYMENT modify
PARTITION BY RANGE (AmountPaid)
(
PARTITION Payment_2000 VALUES LESS THAN (2000),
PARTITION Payment_4000 VALUES LESS THAN (4000),
PARTITION Payment_6000 VALUES LESS THAN (6000),
PARTITION Payment_inf VALUES LESS THAN (MAXVALUE)
) Online;

create tablespace usb datafile 'D:\oradata\orcl\df1.dbf' size 500m;

Alter Table Payment move Partition Payment_6000 tablespace usb ONLINE;
Alter Table Payment move Partition Payment_inf tablespace usb ONLINE;



create tablespace usb datafile 'D:\oradata\orcl\df1.dbf' size 500m;
ALter Table Payment modify
PARTITION BY Hash (AmountPaid)
(Partition Payment_1 TABLESPACE USERS,
Partition Payment_2 TABLESPACE USERS,
Partition Payment_3 TABLESPACE USERS,
Partition Payment_4 TABLESPACE USERS)
ONLINE;



Alter Table Payment move Partition Payment_3 tablespace usb ONLINE;
Alter Table Payment move Partition Payment_4 tablespace usb ONLINE;