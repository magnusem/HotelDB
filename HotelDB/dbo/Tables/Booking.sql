CREATE TABLE Booking(
     Booking_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	 Hotel_No  int   NOT NULL,
     Guest_No  int   NOT NULL,
     Date_From DATE  NOT NULL,
     Date_To   DATE  NOT NULL,
     Room_No   int   NOT NULL,
     FOREIGN KEY(Guest_No) REFERENCES Guest(Guest_No),
	 FOREIGN KEY(Room_No, Hotel_No) REFERENCES Room(Room_No, Hotel_No)
);
GO
ALTER TABLE Booking 
	ADD CONSTRAINT incorrect_dates
       CHECK ((Date_To > Date_From) AND (Date_From <= '2014-01-01'));