USE [master]
GO
/****** Object:  Database [GameShopDB]    Script Date: 30/11/2021 03:37:42 ******/
CREATE DATABASE [GameShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GameShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GameShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GameShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GameShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GameShopDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameShopDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GameShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameShopDB] SET RECOVERY FULL 
GO
ALTER DATABASE [GameShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [GameShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GameShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GameShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GameShopDB', N'ON'
GO
ALTER DATABASE [GameShopDB] SET QUERY_STORE = OFF
GO
USE [GameShopDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/11/2021 03:37:43 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id_Brand] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Brand_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id_Client] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Last_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameCategory]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameCategory](
	[Id_GameCategory] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Game_Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GameCategory] PRIMARY KEY CLUSTERED 
(
	[Id_GameCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Detail_Productos]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Detail_Productos](
	[Id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Producto] [nvarchar](50) NOT NULL,
	[Categoria_Producto] [nvarchar](50) NOT NULL,
	[Categoria_Juego] [nvarchar](50) NULL,
 CONSTRAINT [PK_Master_DetailProductos] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterDetail_Ventas2]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDetail_Ventas2](
	[Id_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[Id_Client] [int] NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MasterDetail_Ventas2] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id_ProductCategory] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Product_Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id_ProductCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id_Product] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](150) NOT NULL,
	[Price] [money] NOT NULL,
	[Game_Category] [nvarchar](50) NULL,
	[Brand_Name] [nvarchar](50) NOT NULL,
	[Product_Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 30/11/2021 03:37:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id_Sale] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NULL,
	[Id_Client] [int] NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Product_Name] [nvarchar](150) NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Product_Category] [nvarchar](50) NOT NULL,
	[Brand_Name] [nvarchar](50) NOT NULL,
	[Game_Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id_Sale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.12')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aa3c8cf7-8349-40d3-9c0a-4261b2f24536', N'hachetapia98@gmail.com', N'HACHETAPIA98@GMAIL.COM', N'hachetapia98@gmail.com', N'HACHETAPIA98@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOWgOwESBCCdNmJ2hdDpFuNZr8lOR9koT3vPB+97fcZUlBoYK4Bv0DHfSCMpk/0XVw==', N'LIDRN2IZRZA6HXLU4Q4OE2ZPINIMEX64', N'34ef1fd6-05ba-4d3e-ba3e-0b150224d7a9', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 
GO
INSERT [dbo].[Brands] ([Id_Brand], [Id_Product], [Brand_Name]) VALUES (2, 3, N'sdsda')
GO
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[GameCategory] ON 
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (1, 1, N'Terror')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (2, 2, N'Fantasia')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (3, 3, N'Lucha')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (4, 4, N'Disparos')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (5, 5, N'Estrategia')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (6, 6, N'Simulacion')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (7, 7, N'Deporte')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (8, 8, N'Aventura')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (9, 9, N'Rol')
GO
INSERT [dbo].[GameCategory] ([Id_GameCategory], [Id_Product], [Game_Category]) VALUES (10, 10, N'Educacion')
GO
SET IDENTITY_INSERT [dbo].[GameCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Master_Detail_Productos] ON 
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (1, N'PlayStation5', N'Consola', NULL)
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (2, N'XBoxOneS', N'Consola', NULL)
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (3, N'Nintendo Switch', N'Consola', NULL)
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (4, N'Nintendo DS', N'Consola', NULL)
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (5, N'GTA V', N'Juego', N'Disparos')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (6, N'FIFA 21', N'Juego', N'Deportes')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (7, N'PES 21', N'Juego', N'Deportes')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (8, N'GOW 4', N'Juego', N'Accion')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (9, N'Fortnite', N'Juego', N'BR')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (10, N'Mario Bros.', N'Juego', N'Fantasia')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (11, N'Hades', N'Juego', N'Aventura')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (12, N'DarkSoul', N'Juego', N'Soul')
GO
INSERT [dbo].[Master_Detail_Productos] ([Id_Producto], [Nombre_Producto], [Categoria_Producto], [Categoria_Juego]) VALUES (13, N'Genshin Impact', N'Juego', N'Aventura')
GO
SET IDENTITY_INSERT [dbo].[Master_Detail_Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (1, N'Xenia', N'Suermeier', N'xsuermeier0@sun.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (2, N'Falkner', N'Durrington', N'fdurrington1@tiny.cc')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (3, N'Bat', N'Libbe', N'blibbe2@loc.gov')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (4, N'Uriah', N'MacGraith', N'umacgraith3@slate.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (5, N'Penni', N'Lattey', N'plattey4@ning.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (6, N'Elysia', N'Sarney', N'esarney5@eventbrite.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (7, N'Dru', N'Pina', N'dpina6@statcounter.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (8, N'Warde', N'Burkitt', N'wburkitt7@taobao.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (9, N'Johnny', N'Upward', N'jupward8@histats.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (10, N'Merna', N'Bemlott', N'mbemlott9@facebook.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (11, N'Darrel', N'Zelake', N'dzelakea@squarespace.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (12, N'Hubie', N'Wrates', N'hwratesb@unc.edu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (13, N'Sammy', N'Gounel', N'sgounelc@wsj.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (14, N'Valle', N'Mistry', N'vmistryd@friendfeed.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (15, N'Auberta', N'Linger', N'alingere@businesswire.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (16, N'Rayshell', N'Randall', N'rrandallf@nbcnews.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (17, N'Liza', N'Greenstead', N'lgreensteadg@dmoz.org')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (18, N'Merrill', N'Trood', N'mtroodh@princeton.edu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (19, N'Stevy', N'Knibley', N'sknibleyi@google.pl')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (20, N'Adelice', N'Bispham', N'abisphamj@chronoengine.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (21, N'Ellene', N'Upchurch', N'eupchurchk@wufoo.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (22, N'Ruth', N'Helix', N'rhelixl@cloudflare.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (23, N'Vinny', N'Vanne', N'vvannem@europa.eu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (24, N'Emmalynn', N'Tammadge', N'etammadgen@seesaa.net')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (25, N'Layney', N'Blazey', N'lblazeyo@vistaprint.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (26, N'Gwynne', N'Shilleto', N'gshilletop@economist.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (27, N'Auberta', N'MacGillicuddy', N'amacgillicuddyq@npr.org')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (28, N'Gerti', N'Beckey', N'gbeckeyr@wisc.edu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (29, N'Austine', N'Pashley', N'apashleys@slashdot.org')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (30, N'Cybill', N'McKerley', N'cmckerleyt@alexa.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (31, N'Pedro', N'Ricardon', N'pricardonu@reference.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (32, N'Salome', N'Nanninini', N'snannininiv@fema.gov')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (33, N'Marne', N'Frantzeni', N'mfrantzeniw@github.io')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (34, N'Sutton', N'Kynton', N'skyntonx@uiuc.edu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (35, N'Andria', N'Heffernon', N'aheffernony@prnewswire.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (36, N'Gwendolyn', N'Swinbourne', N'gswinbournez@soup.io')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (37, N'Kirk', N'Rounsefull', N'krounsefull10@myspace.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (38, N'Drew', N'Graeme', N'dgraeme11@jalbum.net')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (39, N'Claudell', N'Gomer', N'cgomer12@forbes.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (40, N'Sawyere', N'Ruecastle', N'sruecastle13@bizjournals.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (41, N'Udale', N'Jiroutek', N'ujiroutek14@behance.net')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (42, N'Borg', N'Birch', N'bbirch15@discovery.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (43, N'Danica', N'Liddon', N'dliddon16@ucla.edu')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (44, N'Cybill', N'Meecher', N'cmeecher17@google.co.jp')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (45, N'Cobb', N'Lange', N'clange18@nationalgeographic.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (46, N'Constanta', N'Bilovus', N'cbilovus19@naver.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (47, N'Kermy', N'Ilyunin', N'kilyunin1a@sciencedirect.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (48, N'Kilian', N'Koene', N'kkoene1b@hp.com')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (49, N'Elaine', N'Bagge', N'ebagge1c@spiegel.de')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress]) VALUES (50, N'Jeanette', N'Bresner', N'jbresner1d@mysql.com')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (1, N'PlayStation 5', 50.0000, NULL, N'Sony', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (2, N'GTA V', 60.0000, N'Rol', N'Rockstar', N'Game')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (3, N'PlayStation 4', 450.0000, NULL, N'Sony', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (4, N'FIFA', 60.0000, N'Deporte', N'EA', N'Game')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (5, N'Headset Gaming Hyper X', 80.0000, NULL, N'HyperX', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (8, N'PlayStation 5', 450.0000, N'Disparos', N'Nintendo', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (9, N'GTA V', 40.0000, N'Disparos', N'Rockstar', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (10, N'PlayStation 4', 400.0000, N'Disparos', N'EA', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (12, N'Nintendo Switch', 60.0000, N'Lucha', N'Rockstar', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (13, N'PlayStation 5', 500.0000, N'Disparos', N'Nintendo', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (16, N'Nintendo Switch', 500.0000, N'Disparos', N'HyperX', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (17, N'GTA V', 400.0000, N'Lucha', N'Nintendo', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (18, N'Nintendo Switch', 500.0000, N'Simulacion', N'Rockstar', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (19, N'PlayStation 5', 700.0000, N'Disparos', N'Rockstar', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (20, N'PlayStation 5', 500.0000, N'Lucha', N'Nintendo', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (21, N'GTA V', 60.0000, N'Lucha', N'Sony', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (22, N'PlayStation 5', 450.0000, N'Disparos', N'Nintendo', N'Accesorio')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (24, N'Nintendo Switch', 450.0000, N'Disparos', N'Nintendo', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (25, N'Nintendo Switch', 400.0000, N'Deporte', N'Rockstar', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (27, N'FIFA', 60.0000, N'Deporte', N'EA', N'Juego')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (28, N'PlayStation 5', 600.0000, NULL, N'Sony', N'Consola')
GO
INSERT [dbo].[Products] ([Id_Product], [Product_Name], [Price], [Game_Category], [Brand_Name], [Product_Category]) VALUES (29, N'GTA V', 40.0000, N'Fantasia', N'Rockstar', N'Juego')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 
GO
INSERT [dbo].[Sales] ([Id_Sale], [Id_Product], [Id_Client], [First_Name], [Last_Name], [Product_Name], [Price], [Quantity], [Product_Category], [Brand_Name], [Game_Category]) VALUES (1, NULL, NULL, N'Henry', N'Tapia', N'PlayStation 5', 450.0000, N'2', N'Consola', N'Sony', NULL)
GO
INSERT [dbo].[Sales] ([Id_Sale], [Id_Product], [Id_Client], [First_Name], [Last_Name], [Product_Name], [Price], [Quantity], [Product_Category], [Brand_Name], [Game_Category]) VALUES (2, NULL, NULL, N'Angel', N'Aguilera', N'GTA V', 60.0000, N'1', N'Juego', N'Rockstar', N'Rol')
GO
INSERT [dbo].[Sales] ([Id_Sale], [Id_Product], [Id_Client], [First_Name], [Last_Name], [Product_Name], [Price], [Quantity], [Product_Category], [Brand_Name], [Game_Category]) VALUES (3, NULL, NULL, N'Henry', N'Tapia', N'Nintendo Switch', 400.0000, N'1', N'Juego', N'Rockstar', NULL)
GO
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 30/11/2021 03:37:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30/11/2021 03:37:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 30/11/2021 03:37:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 30/11/2021 03:37:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 30/11/2021 03:37:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 30/11/2021 03:37:43 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 30/11/2021 03:37:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Brands]  WITH CHECK ADD  CONSTRAINT [FK_Brands_Products] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Products] ([Id_Product])
GO
ALTER TABLE [dbo].[Brands] CHECK CONSTRAINT [FK_Brands_Products]
GO
ALTER TABLE [dbo].[MasterDetail_Ventas2]  WITH CHECK ADD  CONSTRAINT [FK_MasterDetail_Ventas2_Master_Detail_Productos] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Master_Detail_Productos] ([Id_Producto])
GO
ALTER TABLE [dbo].[MasterDetail_Ventas2] CHECK CONSTRAINT [FK_MasterDetail_Ventas2_Master_Detail_Productos]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Products] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Products] ([Id_Product])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Products]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Client] FOREIGN KEY([Id_Client])
REFERENCES [dbo].[Client] ([Id_Client])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Client]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Products] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Products] ([Id_Product])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Products]
GO
USE [master]
GO
ALTER DATABASE [GameShopDB] SET  READ_WRITE 
GO
