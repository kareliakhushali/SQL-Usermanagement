USE [master]
GO
/****** Object:  Database [UserManagementDb]    Script Date: 8/23/2023 12:56:17 PM ******/
CREATE DATABASE [UserManagementDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserManagementDb', FILENAME = N'C:\Users\158239\UserManagementDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UserManagementDb_log', FILENAME = N'C:\Users\158239\UserManagementDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UserManagementDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserManagementDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserManagementDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UserManagementDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UserManagementDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UserManagementDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UserManagementDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [UserManagementDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UserManagementDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UserManagementDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UserManagementDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UserManagementDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UserManagementDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UserManagementDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UserManagementDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UserManagementDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UserManagementDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UserManagementDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UserManagementDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UserManagementDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UserManagementDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UserManagementDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UserManagementDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [UserManagementDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UserManagementDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UserManagementDb] SET  MULTI_USER 
GO
ALTER DATABASE [UserManagementDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UserManagementDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UserManagementDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UserManagementDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UserManagementDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UserManagementDb] SET QUERY_STORE = OFF
GO
USE [UserManagementDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [UserManagementDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/23/2023 12:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/23/2023 12:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Hobbies] [nvarchar](max) NULL,
	[ImageUpload] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230823070248_final1', N'5.0.17')
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [Hobbies], [ImageUpload], [DateOfBirth]) VALUES (N'013e975e-ff96-49cc-95fb-055f5151191f', N'hemant', N'karelia', N'hemant@gmail.com', N'male', N'singing', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Drose&psig=AOvVaw0iywNRksL-4OAeLQ36CsKL&ust=1692859467101000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCIjzi4uX8oADFQAAAAAdAAAAABAE', CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [Hobbies], [ImageUpload], [DateOfBirth]) VALUES (N'7f476ddc-fa35-4ab8-ba9e-457003a7f8e9', N'pinky', N'karelia', N'pinkuy@gmail.com', N'female', N'dancing', N'hi', CAST(N'2023-08-23T07:17:27.8580000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [Hobbies], [ImageUpload], [DateOfBirth]) VALUES (N'6ad74deb-c0ad-45da-b96a-68df1a117b97', N'Malav', N'karelia', N'malav@gmail.com', N'male', N'singing', N'https://t3.ftcdn.net/jpg/01/05/57/38/360_F_105573812_cvD4P5jo6tMPhZULX324qUYFbNpXlisD.jpg', CAST(N'2023-08-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [Hobbies], [ImageUpload], [DateOfBirth]) VALUES (N'6a7a5878-bf47-4e5a-bcaa-e51e190c6e0d', N'jaydeep', N'karelia', N'jaydeep@gmail.com', N'male', N'singing', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Drose&psig=AOvVaw0iywNRksL-4OAeLQ36CsKL&ust=1692859467101000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCIjzi4uX8oADFQAAAAAdAAAAABAE', CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2))
GO
USE [master]
GO
ALTER DATABASE [UserManagementDb] SET  READ_WRITE 
GO
