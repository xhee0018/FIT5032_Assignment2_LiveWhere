-- Creating table 'Booking'
CREATE TABLE [dbo].[Booking] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CheckinDate] date  NOT NULL,
	[CheckoutDate] date  NOT NULL,
    [Rooms] int NOT NULL,
	[UserId] nvarchar(128)  NOT NULL,
	[HotelId] int NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id),
	FOREIGN KEY (HotelId) REFERENCES Hotels(Id)
);
GO

-- Creating table 'Hotels'
CREATE TABLE [dbo].[Hotels] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
	[Address] nvarchar(max) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [PricePerNight] int  NOT NULL,
	PRIMARY KEY(Id)
);
GO

-- Creating table 'Reviews'
CREATE TABLE [dbo].[Reviews] (
    [UserId] nvarchar(128)  NOT NULL,
	[HotelId] int NOT NULL,
	[ReviewDate] date NOT NULL,
    [Rating] float  NOT NULL,
	[Comment] nvarchar(max) NOT NULL,
	PRIMARY KEY(UserId,HotelId),
	FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id),
	FOREIGN KEY (HotelId) REFERENCES Hotels(Id)
);
GO