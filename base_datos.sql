USE [master]
GO

/****** Object:  Database [restarante]    Script Date: 08/05/2021 10:15:01 ******/
DROP DATABASE [restarante]
GO

/****** Object:  Database [restarante]    Script Date: 08/05/2021 10:15:01 ******/
CREATE DATABASE [restarante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restarante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restarante.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restarante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restarante_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restarante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [restarante] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [restarante] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [restarante] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [restarante] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [restarante] SET ARITHABORT OFF 
GO

ALTER DATABASE [restarante] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [restarante] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [restarante] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [restarante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [restarante] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [restarante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [restarante] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [restarante] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [restarante] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [restarante] SET  DISABLE_BROKER 
GO

ALTER DATABASE [restarante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [restarante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [restarante] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [restarante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [restarante] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [restarante] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [restarante] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [restarante] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [restarante] SET  MULTI_USER 
GO

ALTER DATABASE [restarante] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [restarante] SET DB_CHAINING OFF 
GO

ALTER DATABASE [restarante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [restarante] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [restarante] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [restarante] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [restarante] SET QUERY_STORE = OFF
GO

ALTER DATABASE [restarante] SET  READ_WRITE 
GO


