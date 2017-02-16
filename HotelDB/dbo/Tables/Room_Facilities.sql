CREATE TABLE [dbo].[Room_Facilities]
(
	[Room_no] INT NOT NULL , 
    [Facility_no] INT NOT NULL, 
    [Hotel_no] INT NOT NULL, 
    PRIMARY KEY ([Room_no], [Facility_no], [Hotel_no]), 
    CONSTRAINT [FK_Room_Facilities_Room] FOREIGN KEY ([Hotel_no],[Room_no]) REFERENCES [Room]([Room_no], [Hotel_no]), 
    CONSTRAINT [FK_Room_Facilities_Facilities] FOREIGN KEY ([Facility_no]) REFERENCES [Facilities]([Facility_no])
)
