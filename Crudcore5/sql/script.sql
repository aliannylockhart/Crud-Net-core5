USE [master]
GO
/****** Object:  Database [CrudNetcore]    Script Date: 23/4/2021 9:19:02 a. m. ******/
CREATE DATABASE [CrudNetcore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrudNetcore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CrudNetcore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CrudNetcore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CrudNetcore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CrudNetcore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudNetcore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudNetcore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrudNetcore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrudNetcore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrudNetcore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrudNetcore] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrudNetcore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrudNetcore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrudNetcore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrudNetcore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrudNetcore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrudNetcore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrudNetcore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrudNetcore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrudNetcore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrudNetcore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CrudNetcore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrudNetcore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrudNetcore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrudNetcore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrudNetcore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrudNetcore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CrudNetcore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrudNetcore] SET RECOVERY FULL 
GO
ALTER DATABASE [CrudNetcore] SET  MULTI_USER 
GO
ALTER DATABASE [CrudNetcore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrudNetcore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrudNetcore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrudNetcore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CrudNetcore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CrudNetcore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CrudNetcore', N'ON'
GO
ALTER DATABASE [CrudNetcore] SET QUERY_STORE = OFF
GO
USE [CrudNetcore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/4/2021 9:19:03 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 23/4/2021 9:19:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[FechaLanzamiento] [datetime2](7) NOT NULL,
	[Autor] [nvarchar](max) NOT NULL,
	[Precio] [int] NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210422152551_MigrationInicial', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[Libro] ON 

INSERT [dbo].[Libro] ([Id], [Titulo], [Descripcion], [FechaLanzamiento], [Autor], [Precio]) VALUES (2, N'Rojo y negro', N'Rojo y negro (originalmente Le Rouge et le Noir: c', CAST(N'2013-11-21T00:00:00.0000000' AS DateTime2), N' Stendhal', 18000)
INSERT [dbo].[Libro] ([Id], [Titulo], [Descripcion], [FechaLanzamiento], [Autor], [Precio]) VALUES (3, N'Amor y odio', N'El amor no supera ', CAST(N'2021-04-28T00:00:00.0000000' AS DateTime2), N' Stendhal', 85201)
INSERT [dbo].[Libro] ([Id], [Titulo], [Descripcion], [FechaLanzamiento], [Autor], [Precio]) VALUES (4, N'libro 2', N'El amor no supera ', CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2), N'Bruno', 10000)
INSERT [dbo].[Libro] ([Id], [Titulo], [Descripcion], [FechaLanzamiento], [Autor], [Precio]) VALUES (5, N'el amoooo', N'El amor no supera ', CAST(N'2021-04-28T00:00:00.0000000' AS DateTime2), N'Bruno', 8520)
INSERT [dbo].[Libro] ([Id], [Titulo], [Descripcion], [FechaLanzamiento], [Autor], [Precio]) VALUES (6, N'libro3', N'MIP|', CAST(N'2021-03-18T00:00:00.0000000' AS DateTime2), N'lUIS Sanp', 2500)
SET IDENTITY_INSERT [dbo].[Libro] OFF
GO
USE [master]
GO
ALTER DATABASE [CrudNetcore] SET  READ_WRITE 
GO
