USE [master]
GO
/****** Object:  Database [ProyectoPIA]    Script Date: 30/10/2024 10:52:29 a. m. ******/
CREATE DATABASE [ProyectoPIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoPIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoPIA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoPIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoPIA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProyectoPIA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoPIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoPIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoPIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoPIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoPIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoPIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoPIA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoPIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoPIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoPIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoPIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoPIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoPIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoPIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoPIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoPIA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoPIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoPIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoPIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoPIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoPIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoPIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoPIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoPIA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoPIA] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoPIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoPIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoPIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoPIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoPIA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoPIA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoPIA] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProyectoPIA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProyectoPIA]
GO
/****** Object:  User [Usuario_Samuel]    Script Date: 30/10/2024 10:52:30 a. m. ******/
CREATE USER [Usuario_Samuel] FOR LOGIN [Usuario_Samuel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Samuel]    Script Date: 30/10/2024 10:52:30 a. m. ******/
CREATE USER [Samuel] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Base de datos Samuel]    Script Date: 30/10/2024 10:52:30 a. m. ******/
CREATE USER [Base de datos Samuel] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Base de datos sam]    Script Date: 30/10/2024 10:52:30 a. m. ******/
CREATE USER [Base de datos sam] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Base de datos sam]
GO
ALTER ROLE [db_owner] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Usuario_Samuel]
GO
ALTER ROLE [db_owner] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Samuel]
GO
ALTER ROLE [db_owner] ADD MEMBER [Base de datos sam]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Base de datos sam]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Base de datos sam]
GO
/****** Object:  Schema [Base de datos sam]    Script Date: 30/10/2024 10:52:30 a. m. ******/
CREATE SCHEMA [Base de datos sam]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaID] [int] NOT NULL,
	[NombreCategoria] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_historial]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_historial](
	[HistorialID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[LibroID] [int] NULL,
	[FechaPrestamo] [date] NULL,
	[FechaDevolucion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[HistorialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Libros]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Libros](
	[Libro_ID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NULL,
	[Autor] [varchar](255) NULL,
	[ISBN] [varchar](13) NULL,
	[Editorial] [varchar](255) NULL,
	[AñoPublicacion] [int] NULL,
	[CategoriaID] [int] NULL,
	[CantidadDisponible] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Libro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_multas]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_multas](
	[MultaID] [int] IDENTITY(1,1) NOT NULL,
	[PrestamoID] [int] NULL,
	[Monto] [decimal](10, 2) NULL,
	[Pagada] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MultaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_prestamos]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_prestamos](
	[PrestamoID] [int] IDENTITY(1,1) NOT NULL,
	[LibroID] [int] NULL,
	[UsuarioID] [int] NULL,
	[FechaPrestamo] [date] NULL,
	[FechaDevolucion] [date] NULL,
	[Devuelto] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrestamoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_reservas]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_reservas](
	[ReservaID] [int] IDENTITY(1,1) NOT NULL,
	[LibroID] [int] NULL,
	[UsuarioID] [int] NULL,
	[FechaReserva] [date] NULL,
	[Estado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_usuarios]    Script Date: 30/10/2024 10:52:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_usuarios](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[TipoUsuario] [varchar](50) NULL,
	[Email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tabla_usuarios] ON 

INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (27, N'samuel', N'cliente ', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (28, N'alex', N'cliente ', N'sfljvnsdv@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (29, N'Carlos', N'cliente ', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (30, N'Carlos', N'cliente ', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (31, N'alex', N'cliente ', N'hermanapappyo@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (32, N'samuel', N'cliente', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (33, N'samuel', N'cliente', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (34, N'alex', N'cliente ', N'ztbutoyogg@gmail.com')
INSERT [dbo].[Tabla_usuarios] ([UsuarioID], [Nombre], [TipoUsuario], [Email]) VALUES (35, N'alex', N'cliente ', N'ztbutoyogg@gmail.com')
SET IDENTITY_INSERT [dbo].[Tabla_usuarios] OFF
GO
ALTER TABLE [dbo].[Tabla_historial]  WITH CHECK ADD FOREIGN KEY([LibroID])
REFERENCES [dbo].[Tabla_Libros] ([Libro_ID])
GO
ALTER TABLE [dbo].[Tabla_historial]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Tabla_usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Tabla_Libros]  WITH CHECK ADD FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categorias] ([CategoriaID])
GO
ALTER TABLE [dbo].[Tabla_multas]  WITH CHECK ADD FOREIGN KEY([PrestamoID])
REFERENCES [dbo].[Tabla_prestamos] ([PrestamoID])
GO
ALTER TABLE [dbo].[Tabla_prestamos]  WITH CHECK ADD FOREIGN KEY([LibroID])
REFERENCES [dbo].[Tabla_Libros] ([Libro_ID])
GO
ALTER TABLE [dbo].[Tabla_prestamos]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Tabla_usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Tabla_reservas]  WITH CHECK ADD FOREIGN KEY([LibroID])
REFERENCES [dbo].[Tabla_Libros] ([Libro_ID])
GO
ALTER TABLE [dbo].[Tabla_reservas]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Tabla_usuarios] ([UsuarioID])
GO
USE [master]
GO
ALTER DATABASE [ProyectoPIA] SET  READ_WRITE 
GO
