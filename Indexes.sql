create index depDateIdx on Flight(DEPDATE);
drop index depDateIdx;
create BITMAP index depDateIdx on Flight(DEPDATE);
drop index depDateIdx;

create index PaymentIdx on Payment(ID, AmountPaid, isCardPayment);
drop index PaymentIdx;

create Bitmap index AirBrIdx on Airplane(BRAND);
drop index AirBrIDX;

create index AirBrIdx on Airplane(BRAND);
drop index AirBrIdx;