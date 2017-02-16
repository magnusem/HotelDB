﻿CREATE TABLE Room(
	 Room_No   int    NOT NULL,
     Hotel_No  int    NOT NULL,
     Types     CHAR(1)   DEFAULT 'S',
     Price     FLOAT,
	CONSTRAINT checkType 
	CHECK (Types IN ('D','F','S') OR Types IS NULL),
	CONSTRAINT checkPrice 
	CHECK (price BETWEEN 0 AND 9999),

	FOREIGN KEY (Hotel_No) REFERENCES Hotel (Hotel_No)
	ON UPDATE CASCADE ON DELETE NO ACTION,
	Primary KEY (Room_No, Hotel_No)
);