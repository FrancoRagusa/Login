USE [master]
GO
/****** Object:  Database [Login]    Script Date: 12/10/2023 14:18:58 ******/
CREATE DATABASE [Login]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Login', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Login.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Login_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Login_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Login] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Login].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Login] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Login] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Login] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Login] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Login] SET ARITHABORT OFF 
GO
ALTER DATABASE [Login] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Login] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Login] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Login] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Login] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Login] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Login] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Login] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Login] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Login] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Login] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Login] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Login] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Login] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Login] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Login] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Login] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Login] SET RECOVERY FULL 
GO
ALTER DATABASE [Login] SET  MULTI_USER 
GO
ALTER DATABASE [Login] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Login] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Login] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Login] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Login] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Login', N'ON'
GO
ALTER DATABASE [Login] SET QUERY_STORE = OFF
GO
USE [Login]
GO
/****** Object:  User [alumno]    Script Date: 12/10/2023 14:18:58 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/10/2023 14:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UserName] [varchar](255) NOT NULL,
	[Contraseña] [varchar](255) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Teléfono] [varchar](15) NULL,
 CONSTRAINT [PK__Usuario__3214EC27E82E1DB5] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Matias', N'asd', N'matias', N'mar', N'0')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario1', N'Contraseña1', N'Nombre1', N'usuario1@example.com', N'1111111')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario10', N'Contraseña10', N'Nombre10', N'usuario10@example.com', N'10101010')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario11', N'Contraseña11', N'Nombre11', N'usuario11@example.com', N'11111111')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario12', N'Contraseña12', N'Nombre12', N'usuario12@example.com', N'12121212')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario13', N'Contraseña13', N'Nombre13', N'usuario13@example.com', N'13131313')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario14', N'Contraseña14', N'Nombre14', N'usuario14@example.com', N'14141414')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario15', N'Contraseña15', N'Nombre15', N'usuario15@example.com', N'15151515')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario16', N'Contraseña16', N'Nombre16', N'usuario16@example.com', N'16161616')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario17', N'Contraseña17', N'Nombre17', N'usuario17@example.com', N'17171717')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario18', N'Contraseña18', N'Nombre18', N'usuario18@example.com', N'18181818')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario19', N'Contraseña19', N'Nombre19', N'usuario19@example.com', N'19191919')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario2', N'Contraseña2', N'Nombre2', N'usuario2@example.com', N'2222222')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario20', N'Contraseña20', N'Nombre20', N'usuario20@example.com', N'20202020')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario21', N'Contraseña21', N'Nombre21', N'usuario21@example.com', N'21212121')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario22', N'Contraseña22', N'Nombre22', N'usuario22@example.com', N'22222222')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario23', N'Contraseña23', N'Nombre23', N'usuario23@example.com', N'23232323')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario24', N'Contraseña24', N'Nombre24', N'usuario24@example.com', N'24242424')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario25', N'Contraseña25', N'Nombre25', N'usuario25@example.com', N'25252525')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario26', N'Contraseña26', N'Nombre26', N'usuario26@example.com', N'26262626')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario27', N'Contraseña27', N'Nombre27', N'usuario27@example.com', N'27272727')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario28', N'Contraseña28', N'Nombre28', N'usuario28@example.com', N'28282828')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario29', N'Contraseña29', N'Nombre29', N'usuario29@example.com', N'29292929')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario3', N'Contraseña3', N'Nombre3', N'usuario3@example.com', N'3333333')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario30', N'Contraseña30', N'Nombre30', N'usuario30@example.com', N'30303030')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario31', N'Contraseña31', N'Nombre31', N'usuario31@example.com', N'31313131')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario32', N'Contraseña32', N'Nombre32', N'usuario32@example.com', N'32323232')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario33', N'Contraseña33', N'Nombre33', N'usuario33@example.com', N'33333333')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario34', N'Contraseña34', N'Nombre34', N'usuario34@example.com', N'34343434')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario35', N'Contraseña35', N'Nombre35', N'usuario35@example.com', N'35353535')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario36', N'Contraseña36', N'Nombre36', N'usuario36@example.com', N'36363636')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario37', N'Contraseña37', N'Nombre37', N'usuario37@example.com', N'37373737')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario38', N'Contraseña38', N'Nombre38', N'usuario38@example.com', N'38383838')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario39', N'Contraseña39', N'Nombre39', N'usuario39@example.com', N'39393939')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario4', N'Contraseña4', N'Nombre4', N'usuario4@example.com', N'4444444')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario40', N'Contraseña40', N'Nombre40', N'usuario40@example.com', N'40404040')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario41', N'Contraseña41', N'Nombre41', N'usuario41@example.com', N'41414141')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario42', N'Contraseña42', N'Nombre42', N'usuario42@example.com', N'42424242')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario43', N'Contraseña43', N'Nombre43', N'usuario43@example.com', N'43434343')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario44', N'Contraseña44', N'Nombre44', N'usuario44@example.com', N'44444444')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario45', N'Contraseña45', N'Nombre45', N'usuario45@example.com', N'45454545')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario46', N'Contraseña46', N'Nombre46', N'usuario46@example.com', N'46464646')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario47', N'Contraseña47', N'Nombre47', N'usuario47@example.com', N'47474747')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario48', N'Contraseña48', N'Nombre48', N'usuario48@example.com', N'48484848')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario49', N'Contraseña49', N'Nombre49', N'usuario49@example.com', N'49494949')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario5', N'Contraseña5', N'Nombre5', N'usuario5@example.com', N'5555555')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario50', N'Contraseña50', N'Nombre50', N'usuario50@example.com', N'50505050')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario51', N'123', N'matias', N'asd', N'0')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario6', N'Contraseña6', N'Nombre6', N'usuario6@example.com', N'6666666')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario7', N'Contraseña7', N'Nombre7', N'usuario7@example.com', N'7777777')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario8', N'Contraseña8', N'Nombre8', N'usuario8@example.com', N'8888888')
INSERT [dbo].[Usuario] ([UserName], [Contraseña], [Nombre], [Email], [Teléfono]) VALUES (N'Usuario9', N'Contraseña9', N'Nombre9', N'usuario9@example.com', N'9999999')
GO
USE [master]
GO
ALTER DATABASE [Login] SET  READ_WRITE 
GO
