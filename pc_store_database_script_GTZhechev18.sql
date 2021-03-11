USE [master]
GO
/****** Object:  Database [pc_store_GTZhechev18]    Script Date: 7.3.2021 г. 18:40:21 ******/
CREATE DATABASE [pc_store_GTZhechev18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_GTZhechev18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_GTZhechev18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_GTZhechev18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_GTZhechev18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_GTZhechev18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_GTZhechev18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_GTZhechev18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_GTZhechev18]
GO
/****** Object:  Table [dbo].[products_GTZhechev18]    Script Date: 7.3.2021 г. 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_GTZhechev18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-([Price]*[Discount])/(100)),
 CONSTRAINT [PK_products_GTZhechev18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_GTZhechev18] ON 
GO
INSERT [dbo].[products_GTZhechev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (2, N'Television', N'Panasonic', N'Viera', 2020, CAST(2500 AS Decimal(18, 0)), 35, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_GTZhechev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (3, N'Television', N'Sony', N'53', 2019, CAST(1900 AS Decimal(18, 0)), 72, CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_GTZhechev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (4, N'Fridge', N'Bosh', N'76', 2021, CAST(2700 AS Decimal(18, 0)), 67, CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_GTZhechev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (5, N'Microwave', N'Sony', N'23', 2023, CAST(1200 AS Decimal(18, 0)), 100, CAST(9 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_GTZhechev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (6, N'Oven', N'Samsung', N'Heater', 2022, CAST(2000 AS Decimal(18, 0)), 150, CAST(20 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_GTZhechev18] OFF
GO
ALTER TABLE [dbo].[products_GTZhechev18] ADD  CONSTRAINT [DF_products_GTZhechev18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_GTZhechev18] ADD  CONSTRAINT [DF_products_GTZhechev18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_GTZhechev18]  WITH CHECK ADD  CONSTRAINT [CK_products_GTZhechev18] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_GTZhechev18] CHECK CONSTRAINT [CK_products_GTZhechev18]
GO
ALTER TABLE [dbo].[products_GTZhechev18]  WITH CHECK ADD  CONSTRAINT [CK_products_GTZhechev18_1] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_GTZhechev18] CHECK CONSTRAINT [CK_products_GTZhechev18_1]
GO
ALTER TABLE [dbo].[products_GTZhechev18]  WITH CHECK ADD  CONSTRAINT [CK_products_GTZhechev18_2] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_GTZhechev18] CHECK CONSTRAINT [CK_products_GTZhechev18_2]
GO
ALTER TABLE [dbo].[products_GTZhechev18]  WITH CHECK ADD  CONSTRAINT [CK_products_GTZhechev18_3] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_GTZhechev18] CHECK CONSTRAINT [CK_products_GTZhechev18_3]
GO
USE [master]
GO
ALTER DATABASE [pc_store_GTZhechev18] SET  READ_WRITE 
GO
