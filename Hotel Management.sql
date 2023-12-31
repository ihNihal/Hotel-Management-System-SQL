USE [master]
GO
/****** Object:  Database [Hotel_Management_System]    Script Date: 26/4/2022 10:15:08 AM ******/
CREATE DATABASE [Hotel_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel_Management_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hotel_Management_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hotel_Management_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hotel_Management_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hotel_Management_System] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hotel_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hotel_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hotel_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel_Management_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hotel_Management_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hotel_Management_System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Hotel_Management_System] SET QUERY_STORE = OFF
GO
USE [Hotel_Management_System]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] NOT NULL,
	[Hotelid] [int] NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [int] NOT NULL,
	[Book_id] [int] NULL,
	[name] [varchar](255) NULL,
	[contact] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [int] NOT NULL,
	[Manager_id] [int] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelID] [int] NOT NULL,
	[OwnerID] [int] NULL,
	[Hotel_Name] [varchar](255) NULL,
	[number_of_rooms] [int] NULL,
	[address] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[manager_id] [int] NOT NULL,
	[Hotelid] [int] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[owner]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[owner](
	[OwnerID] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[contact] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 26/4/2022 10:15:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_id] [int] NOT NULL,
	[Book_id] [int] NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (910, 101, CAST(N'2020-04-26' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (911, 102, CAST(N'2020-04-22' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (912, 103, CAST(N'2020-05-23' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (913, 104, CAST(N'2021-04-21' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (914, 105, CAST(N'2021-02-12' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (915, 106, CAST(N'2022-04-02' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (916, 107, CAST(N'2022-08-23' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (917, 108, CAST(N'2020-02-15' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (918, 109, CAST(N'2021-07-24' AS Date))
INSERT [dbo].[Book] ([book_id], [Hotelid], [date]) VALUES (919, 110, CAST(N'2022-10-14' AS Date))
GO
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (721, 910, N'Steve Jobs', 879387976)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (722, 911, N'Bill Gates', 354235235)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (723, 912, N'Gaulam Ambani', 32984294)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (724, 913, N'AR Rahman', 9780979)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (725, 914, N'Elon Musk', 987907890)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (726, 915, N'George Bush', 213124512)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (727, 916, N'Dawyane Johson', 435235235)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (728, 917, N'Hillary Clinton', 214153125)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (729, 918, N'Shahrukkhan', 32523525)
INSERT [dbo].[Client] ([client_id], [Book_id], [name], [contact]) VALUES (730, 919, N'John Abraham', 12423153)
GO
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (401, 301, N'Barry Cuda')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (402, 302, N'Rock Cod')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (403, 303, N'Hazel Nutt')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (404, 304, N'Barb Akew')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (405, 305, N'Pete Tsar')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (406, 306, N'Frank Furter')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (407, 307, N'Di Ahreya')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (408, 308, N'Lois Lane')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (409, 309, N'Henry Higgins')
INSERT [dbo].[Employee] ([Employee_ID], [Manager_id], [name]) VALUES (410, 310, N'Joseph Arimathea')
GO
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (101, 1, N'Hotel Sea Crown', 5, N'Marin Drive, Kola Toli, New Beach, 4700 Coxs Bazar, Bangladesh')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (102, 2, N'Long Beach Hotel', 3, N'14 Kalatoli, Hotel-Motel Zone, 4700 Coxs Bazar, Bangladesh')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (103, 3, N'Prime Park Hotel', 4, N'Plot 58, Block C Kolatoli, 4700 Coxs Bazar, Bangladesh')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (104, 4, N'Laguna Beach Hotel & Resort', 5, N'Plot No. 39, Block-B, Kolatoli Road, Sugandha Point, 4700 Coxs Bazar, Bangladesh ')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (105, 5, N'Grace Cox Smart Hotel', 5, N'Plot 22, Block C, Sea Beach Road Kolatoli, Coxsbazar, 4700 Coxs Bazar, Bangladesh')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (106, 6, N'Le Méridien Dhaka', 7, N'79/A Commercial Area Airport Rd, Dhaka 1229')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (107, 7, N'InterContinental Dhaka', 8, N'G, 1 Minto Rd, Dhaka 1000')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (108, 8, N'Holiday Inn Dhaka City Centre', 15, N'23 Shahid Tajuddin Ahmed Sharani, Dhaka 1208')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (109, 9, N'Hotel De Meridian', 2, N'Asset Brookhaven, Road No. 12/A, Dhaka 1230')
INSERT [dbo].[Hotel] ([HotelID], [OwnerID], [Hotel_Name], [number_of_rooms], [address]) VALUES (110, 10, N'HOTEL- GREEN LEAF GUEST HOUSE SREEMANGAL', 3, N'Dipshikha Infertility Care & counselling centre, College Road, Next to, 3210')
GO
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (301, 101, N'Liz Erd')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (302, 102, N'Ray Sin')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (303, 103, N'Minnie Van Ryde')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (304, 104, N'Anita Bath')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (305, 105, N'Bea Mine')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (306, 106, N'Harriet Upp')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (307, 107, N'Jen Tile')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (308, 108, N'Simon Sais')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (309, 109, N'Art Decco')
INSERT [dbo].[Manager] ([manager_id], [Hotelid], [name]) VALUES (310, 110, N'Lynne Gwistic')
GO
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (1, N'Abdus Salam', 123434343)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (2, N'Rahim Jabbar', 156775454)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (3, N'Kuddus Rahman', 13455453)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (4, N'Ashik Alamin', 18976534)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (5, N'Evan Shihab', 18989798)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (6, N'Sindid Ihfaz', 12348583)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (7, N'Rafid Bin Motiur', 19898789)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (8, N'Adrian Mohonto', 19876756)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (9, N'Tanzim Ahsan', 987987667)
INSERT [dbo].[owner] ([OwnerID], [Name], [contact]) VALUES (10, N'Steve Sion', 15676768)
GO
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (511, 910, CAST(N'2020-04-26' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (512, 911, CAST(N'2020-04-26' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (513, 912, CAST(N'2020-05-23' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (514, 913, CAST(N'2021-04-21' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (515, 914, CAST(N'2021-02-12' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (516, 915, CAST(N'2022-04-02' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (517, 916, CAST(N'2022-08-23' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (518, 917, CAST(N'2020-02-15' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (519, 918, CAST(N'2021-07-24' AS Date))
INSERT [dbo].[Payment] ([Payment_id], [Book_id], [date]) VALUES (520, 919, CAST(N'2022-10-14' AS Date))
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([HotelID])
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD FOREIGN KEY([Book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Manager_id])
REFERENCES [dbo].[Manager] ([manager_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([OwnerID])
REFERENCES [dbo].[owner] ([OwnerID])
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([HotelID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
USE [master]
GO
ALTER DATABASE [Hotel_Management_System] SET  READ_WRITE 
GO
