ALTER TABLE Carrier
    ADD (CONSTRAINT check_rating CHECK (Rating <= 100));
	
insert into Carrier (Name, Rating) values ('test', 101);

UPDATE Carrier
SET Rating = 101
WHERE NAME = 'test';