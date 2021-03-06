USE [master]
GO
/****** Object:  Database [ProductMangement]    Script Date: 10/10/2020 13:31:02 ******/
CREATE DATABASE [ProductMangement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductMangement', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProductMangement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProductMangement_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProductMangement_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductMangement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductMangement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductMangement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductMangement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductMangement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductMangement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductMangement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductMangement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductMangement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductMangement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductMangement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductMangement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductMangement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductMangement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductMangement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductMangement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductMangement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductMangement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductMangement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductMangement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductMangement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductMangement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductMangement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductMangement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductMangement] SET  MULTI_USER 
GO
ALTER DATABASE [ProductMangement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductMangement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductMangement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductMangement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ProductMangement]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 10/10/2020 13:31:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Description] [varchar](500) NULL,
	[Stock] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_tbl_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Products] ON 

INSERT [dbo].[tbl_Products] ([Id], [Name], [Description], [Stock], [Price]) VALUES (1, N'Bottle', N'1000 ml Bottle', 100, NULL)
INSERT [dbo].[tbl_Products] ([Id], [Name], [Description], [Stock], [Price]) VALUES (2, N'iPhone 11', N'Smart Phone', 100, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Products] OFF
GO
USE [master]
GO
ALTER DATABASE [ProductMangement] SET  READ_WRITE 
GO
