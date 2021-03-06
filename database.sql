USE [master]
GO
/****** Object:  Database [QuanLyNhaKho]    Script Date: 5/5/2019 10:39:59 PM ******/
CREATE DATABASE [QuanLyNhaKho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhaKho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MINH1997\MSSQL\DATA\QuanLyNhaKho.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhaKho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MINH1997\MSSQL\DATA\QuanLyNhaKho_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhaKho] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhaKho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhaKho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhaKho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhaKho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhaKho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhaKho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhaKho] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhaKho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhaKho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhaKho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhaKho] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhaKho] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyNhaKho]
GO
/****** Object:  Table [dbo].[Categoriess]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoriess](
	[CategoryID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categoriess] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Input]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input](
	[InputID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDateIP] [nvarchar](50) NULL,
	[TotalAmountIP] [int] NULL,
 CONSTRAINT [PK_Input] PRIMARY KEY CLUSTERED 
(
	[InputID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InputDetails]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputDetails](
	[InputDetailID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[InputID] [int] NOT NULL,
	[Quantityy] [int] NOT NULL,
	[Notee] [nvarchar](50) NULL,
 CONSTRAINT [PK_InputDetails] PRIMARY KEY CLUSTERED 
(
	[InputDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Output]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Output](
	[OutputID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDateOP] [nvarchar](50) NOT NULL,
	[TotalAmountOP] [int] NOT NULL,
 CONSTRAINT [PK_Output] PRIMARY KEY CLUSTERED 
(
	[OutputID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OutputDetails]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutputDetails](
	[OutputDetailID] [int] NOT NULL,
	[OutputID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Quantity] [nchar](10) NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_OutputDetails] PRIMARY KEY CLUSTERED 
(
	[OutputDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/5/2019 10:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
	[position] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Categoriess]  WITH CHECK ADD  CONSTRAINT [FK_Categoriess_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categoriess] CHECK CONSTRAINT [FK_Categoriess_Users]
GO
ALTER TABLE [dbo].[Input]  WITH CHECK ADD  CONSTRAINT [FK_Input_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Input] CHECK CONSTRAINT [FK_Input_Suppliers]
GO
ALTER TABLE [dbo].[InputDetails]  WITH CHECK ADD  CONSTRAINT [FK_InputDetails_Categoriess] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categoriess] ([CategoryID])
GO
ALTER TABLE [dbo].[InputDetails] CHECK CONSTRAINT [FK_InputDetails_Categoriess]
GO
ALTER TABLE [dbo].[InputDetails]  WITH CHECK ADD  CONSTRAINT [FK_InputDetails_Input] FOREIGN KEY([InputID])
REFERENCES [dbo].[Input] ([InputID])
GO
ALTER TABLE [dbo].[InputDetails] CHECK CONSTRAINT [FK_InputDetails_Input]
GO
ALTER TABLE [dbo].[Output]  WITH CHECK ADD  CONSTRAINT [FK_Output_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Output] CHECK CONSTRAINT [FK_Output_Customer]
GO
ALTER TABLE [dbo].[OutputDetails]  WITH CHECK ADD  CONSTRAINT [FK_OutputDetails_Categoriess] FOREIGN KEY([OutputID])
REFERENCES [dbo].[Categoriess] ([CategoryID])
GO
ALTER TABLE [dbo].[OutputDetails] CHECK CONSTRAINT [FK_OutputDetails_Categoriess]
GO
ALTER TABLE [dbo].[OutputDetails]  WITH CHECK ADD  CONSTRAINT [FK_OutputDetails_Output] FOREIGN KEY([OutputID])
REFERENCES [dbo].[Output] ([OutputID])
GO
ALTER TABLE [dbo].[OutputDetails] CHECK CONSTRAINT [FK_OutputDetails_Output]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhaKho] SET  READ_WRITE 
GO
