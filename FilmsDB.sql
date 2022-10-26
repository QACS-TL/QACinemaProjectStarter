USE [master]
GO
CREATE DATABASE [Films]
GO 
USE [Films]
GO
/****** Object:  Table [dbo].[FilmImages]    Script Date: 26/10/2022 16:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmImages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Src] [nvarchar](100) NULL,
	[Alt] [nvarchar](50) NULL,
 CONSTRAINT [PK_FilmImages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 26/10/2022 16:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Synopsis] [nvarchar](max) NULL,
	[Cast] [nvarchar](100) NULL,
	[Directors] [nvarchar](50) NULL,
	[ShowingTimes] [nvarchar](100) NULL,
	[ReleaseDate] [datetime] NULL,
	[FilmStatus] [int] NULL,
	[Image_ID] [int] NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 26/10/2022 16:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](10) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [nvarchar](10) NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Openings]    Script Date: 26/10/2022 16:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Openings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [nchar](10) NOT NULL,
	[opening] [nchar](10) NULL,
	[close] [nchar](10) NULL,
 CONSTRAINT [PK_Openings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FilmImages] ON 
GO
INSERT [dbo].[FilmImages] ([id], [Title], [Src], [Alt]) VALUES (1, N'King of Thieves', N'images/KingOfThieves.jpg', N'King of Thieves')
GO
INSERT [dbo].[FilmImages] ([id], [Title], [Src], [Alt]) VALUES (2, N'The Predator', N'images/ThePredator.jpg', N'The Predator')
GO
INSERT [dbo].[FilmImages] ([id], [Title], [Src], [Alt]) VALUES (3, N'The House with a Clock in its Walls', N'images/TheHouse.jpg', N'The House with a Clock in its Walls')
GO
INSERT [dbo].[FilmImages] ([id], [Title], [Src], [Alt]) VALUES (4, N'No Image', NULL, N'Image not available')
GO
SET IDENTITY_INSERT [dbo].[FilmImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Films] ON 
GO
INSERT [dbo].[Films] ([id], [Title], [Synopsis], [Cast], [Directors], [ShowingTimes], [ReleaseDate], [FilmStatus], [Image_ID]) VALUES (1, N'King of Thieves', N'Test Film 1 Synopsis', N'Test Film 1 Cast', N'Test Film 1 Directors', N'11:45, 13:30, 17:15, 20:45', CAST(N'2019-05-27T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Films] ([id], [Title], [Synopsis], [Cast], [Directors], [ShowingTimes], [ReleaseDate], [FilmStatus], [Image_ID]) VALUES (2, N'The Predator', N'Test Film 2 Synopsis', N'Test Film 2 Cast', N'Test Film 2 Directors', N'11:45, 13:30, 17:15, 20:45', CAST(N'2019-10-27T00:00:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[Films] ([id], [Title], [Synopsis], [Cast], [Directors], [ShowingTimes], [ReleaseDate], [FilmStatus], [Image_ID]) VALUES (3, N'The House with a Clock in its Walls', N'Test Film 3 Synopsis', N'Test Film 3 Cast', N'Test Film 3 Directors', N'11:45, 13:30, 17:15, 20:45', CAST(N'2019-05-27T00:00:00.000' AS DateTime), 2, 3)
GO
INSERT [dbo].[Films] ([id], [Title], [Synopsis], [Cast], [Directors], [ShowingTimes], [ReleaseDate], [FilmStatus], [Image_ID]) VALUES (4, N'The Banana Men', N'Test Film 4 Synopsis', N'Test Film 4 Cast', N'Test Film 4 Directors', N'9:25, 12:30', CAST(N'2022-05-03T00:00:00.000' AS DateTime), 1, 4)
GO
SET IDENTITY_INSERT [dbo].[Films] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (1, N'Mr', N'Bob', N'McGinty', N'Bob@Bob.com', N'01234567891011', CAST(N'2020-05-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (2, N'Ms', N'Sadia', N'Saleem', N'Sadia@Sadia.com', N'02345678910111', CAST(N'1998-11-14T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (3, N'Mr', N'Trampus', N'Trucklebury', N'Trampus@Trampus.com', N'03030303030303', CAST(N'1990-07-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (16, N'Miss', N'Leonard', N'Nimoy', N'Leonard@Leonard.com', N'01234567890', CAST(N'2022-05-31T00:00:00.000' AS DateTime), N'female')
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (17, N'Dr', N'Christopher', N'Crippen', N'Chris.Crippen@Crip.com', N'01231234123', CAST(N'2000-12-12T00:00:00.000' AS DateTime), N'male')
GO
INSERT [dbo].[Members] ([id], [Title], [FirstName], [LastName], [Email], [PhoneNumber], [DateOfBirth], [Gender]) VALUES (18, N'Dr', N'Ted', N'Jones', N'ted@ted.com', N'01272456789', CAST(N'2022-09-01T00:00:00.000' AS DateTime), N'female')
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[Openings] ON 
GO
INSERT [dbo].[Openings] ([id], [day], [opening], [close]) VALUES (1, N'Monday    ', N'11:00     ', N'00:00     ')
GO
INSERT [dbo].[Openings] ([id], [day], [opening], [close]) VALUES (2, N'Friday    ', N'11:00     ', N'2:00      ')
GO
INSERT [dbo].[Openings] ([id], [day], [opening], [close]) VALUES (3, N'Sunday    ', N'11:44     ', N'23:00     ')
GO
INSERT [dbo].[Openings] ([id], [day], [opening], [close]) VALUES (4, N'Tuesday   ', N'14:30     ', N'18:00     ')
GO
SET IDENTITY_INSERT [dbo].[Openings] OFF
GO
USE [master]
GO
ALTER DATABASE [Films] SET  READ_WRITE 
GO
