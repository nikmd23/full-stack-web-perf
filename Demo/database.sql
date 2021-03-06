USE [master]
GO
/****** Object:  Database [Mascots]    Script Date: 2/10/2014 6:54:15 PM ******/
CREATE DATABASE [Mascots]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mascots', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Mascots.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Mascots_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Mascots_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Mascots] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mascots].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mascots] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mascots] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mascots] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mascots] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mascots] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mascots] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mascots] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Mascots] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mascots] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mascots] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mascots] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mascots] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mascots] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mascots] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mascots] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mascots] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mascots] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mascots] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mascots] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mascots] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mascots] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mascots] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mascots] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mascots] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mascots] SET  MULTI_USER 
GO
ALTER DATABASE [Mascots] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mascots] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mascots] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mascots] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Mascots]
GO
/****** Object:  Table [dbo].[Leagues]    Script Date: 2/10/2014 6:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Leagues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Slug] [varchar](50) NOT NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mascots]    Script Date: 2/10/2014 6:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mascots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Slug] [varchar](30) NOT NULL,
	[IsChampion] [bit] NOT NULL,
	[TwitterHandle] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2/10/2014 6:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LeagueId] [int] NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Slug] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Leagues] ON 

INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (1, N'Appalachian', N'appalachian')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (2, N'California', N'california')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (3, N'Carolina', N'carolina')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (4, N'Eastern', N'eastern')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (5, N'Florida State', N'florida-state')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (6, N'International', N'international')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (7, N'Midwest', N'midwest')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (8, N'New York-Penn', N'new-york-penn')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (9, N'Northwest', N'northwest')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (10, N'Pacific Coast', N'pacific-coast')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (11, N'Pioneer', N'pioneer')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (12, N'South Atlantic', N'south-atlantic')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (13, N'Southern', N'southern')
INSERT [dbo].[Leagues] ([Id], [Name], [Slug]) VALUES (14, N'Texas', N'texas')
SET IDENTITY_INSERT [dbo].[Leagues] OFF
SET IDENTITY_INSERT [dbo].[Mascots] ON 

INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (1, 1, N'Celery', N'celery', 0, N'BisonsCelery')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (2, 2, N'Homer the Dragon', N'homer-the-dragon', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (3, 3, N'LouSeal', N'louseal', 1, N'ClippersLouSeal')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (4, 4, N'Wool E. Bull', N'wool-e-bull', 0, N'WoolEBull')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (5, 5, N'Chopper', N'chopper', 0, N'ChopperGBraves')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (6, 6, N'Rowdie', N'rowdie', 0, N'RowdieBear')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (7, 7, N'Hambone', N'hambone', 0, N'Go_Hambone')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (8, 8, N'Buddy Bat', N'buddy-bat', 0, N'buddybat')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (9, 9, N'Rip Tide', N'rip-tide', 0, N'therealriptide')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (10, 10, N'Paws', N'paws', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (11, 11, N'Spikes', N'spikes', 0, N'SpikesAndMittsy')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (12, 12, N'Quills', N'quills', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (13, 13, N'Scooch', N'scooch', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (14, 14, N'Muddy the Mud Hen', N'muddy-the-mud-hen', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (15, 15, N'Orbit', N'orbit', 0, N'Orbit_Isotopes')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (16, 16, N'Sox the Fox', N'sox-the-fox', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (17, 17, N'Parker', N'parker', 1, N'TheRealParkerB')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (18, 18, N'Cubbie Bear', N'cubbie-bear', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (19, 19, N'Cosmo', N'cosmo', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (20, 20, N'Rockey Redbird', N'rockey-redbird', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (21, 21, N'Ozzie', N'ozzie', 0, N'OzzieTheMascot')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (22, 22, N'Boudreaux D. Nutria', N'boudreaux-d-nutria', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (23, 23, N'Cooper', N'cooper', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (24, 24, N'Stormy', N'stormy', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (25, 25, N'Archie', N'archie', 0, N'archieaceball')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (26, 26, N'Spike', N'spike', 0, N'Spike_RRE')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (27, 27, N'Dinger', N'dinger', 0, N'RCDinger')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (28, 28, N'Bumble', N'bumble', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (29, 29, N'Rhubarb the Reindeer', N'rhubarb-the-reindeer', 0, N'RainiersRhubarb')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (30, 30, N'Kino Bambino', N'kino-bambino', 0, N'padresmascot')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (31, 31, N'Orbit', N'orbit-2', 0, N'AerosOrbit')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (32, 32, N'Steamer', N'steamer', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (33, 33, N'Hot Dog Horse', N'hot-dog-horse', 0, N'thehotdoghorse')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (34, 34, N'Louie', N'louie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (35, 35, N'C. Wolf', N'c-wolf', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (36, 36, N'Rascal', N'rascal', 0, N'sensrascal00')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (37, 37, N'Rocky', N'rocky', 0, N'OfficialRocky9')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (38, 38, N'Fungo the Fisher Cat', N'fungo-the-fisher-cat', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (39, 39, N'Slugger the Sea Dog', N'slugger-the-sea-dog', 0, N'Slugger_SeaDog')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (40, 40, N'Crazy Hot Dog Vendor', N'crazy-hot-dog-vendor', 0, N'CrazyHotDogVndr')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (41, 41, N'Nutzy', N'nutzy', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (42, 42, N'Boomer', N'boomer', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (43, 43, N'Babe Ruff', N'babe-ruff', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (44, 44, N'Looie the Lookout', N'looie-the-lookout', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (45, 45, N'Homer the Pole Cat', N'homer-the-pole-cat', 0, N'homer_polecat')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (46, 46, N'Chimpy', N'chimpy', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (47, 47, N'Southpaw', N'southpaw', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (48, 48, N'Trusty', N'trusty', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (49, 49, N'Teddy', N'teddy', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (50, 50, N'Big Mo.', N'big-mo', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (51, 51, N'Kazoo', N'kazoo', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (52, 52, N'Slugger', N'slugger', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (53, 53, N'Shelly the Horse', N'shelly-the-horse', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (54, 54, N'Rusty Hook', N'rusty-hook', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (55, 55, N'Deuce', N'deuce', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (56, 56, N'Rocky RockHound', N'rocky-rockhound', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (57, 57, N'Sinker the Lake Creature', N'sinker-the-lake-creature', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (58, 58, N'Ballapeno', N'ballapeno', 1, N'Ballapeno')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (59, 59, N'Louie', N'louie-2', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (60, 60, N'Hornsby', N'hornsby', 0, N'Therealhornsby')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (61, 61, N'Torch', N'torch', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (62, 62, N'Wooly Bully', N'wooly-bully', 0, N'woolybullymavs')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (63, 63, N'Bernie', N'bernie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (64, 64, N'Thunder', N'thunder', 0, N'ThundertheDog')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (65, 65, N'KaBoom!', N'kaboom', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (66, 66, N'Wally the Walnut', N'wally-the-walnut', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (67, 67, N'Tremor', N'tremor', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (68, 68, N'Gigante', N'gigante', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (69, 69, N'Splash', N'splash', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (70, 70, N'Tipper T. Bull', N'tipper-t-bull', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (71, 71, N'Muddy the Mudcat', N'muddy-the-mudcat', 0, N'muddythemudcat')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (72, 72, N'Keyote', N'keyote', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (73, 73, N'Southpaw', N'southpaw-2', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (74, 74, N'Splash Pelican', N'splash-pelican', 1, N'SplashPelican')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (75, 75, N'Uncle Slam', N'uncle-slam', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (76, 76, N'Mugsy', N'mugsy', 0, N'SalemSoxMugsy')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (77, 77, N'Rocky Bluewinkle', N'rocky-bluewinkle', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (78, 78, N'Bolt', N'bolt', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (79, 79, N'Marty the Marauder', N'marty-the-marauder', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (80, 80, N'Manny the Manatee', N'manny-the-manatee', 0, N'manny_manatee')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (81, 81, N'Stoney', N'stoney', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (82, 82, N'Phinley', N'phinley', 1, N'PhinleyThresher')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (83, 83, N'Cubby', N'cubby', 0, N'DCubsCubbysCrew')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (84, 84, N'D-Jay', N'd-jay', 0, N'djaybluejay')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (85, 85, N'Miss-A-Miracle', N'miss-a-miracle', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (86, 86, N'Hamilton R. Head', N'hamilton-r-head', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (87, 87, N'Ace', N'ace', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (88, 88, N'Robbie the Redbird', N'robbie-the-redbird', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (89, 89, N'Klutch', N'klutch', 0, N'Klutch_STLMets')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (90, 90, N'Blue', N'blue', 0, N'Blue_TYMascot')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (91, 91, N'Snappy D. Turtle', N'snappy-d-turtle', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (92, 92, N'Roscoe the Grease Monkey', N'roscoe-the-grease-monkey', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (93, 93, N'Buzz', N'buzz', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (94, 94, N'Mr. Shucks', N'mr-shucks', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (95, 95, N'Louie The LumberKing', N'louie-the-lumberking', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (96, 96, N'Heater', N'heater', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (97, 97, N'Johnny TinCap', N'johnny-tincap', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (98, 98, N'Lou E. Loon', N'lou-e-loon', 0, N'LouELoon')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (99, 99, N'Ozzie T. Cougar', N'ozzie-t-cougar', 0, NULL)
GO
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (100, 100, N'Skipper', N'skipper', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (101, 101, N'Big Lug', N'big-lug', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (102, 102, N'Homer', N'homer', 1, N'HomerPeoChiefs')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (103, 103, N'Rascal', N'rascal-2', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (104, 104, N'Swoop', N'swoop', 0, N'SilverSwoop')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (105, 105, N'Crash the River Rascal', N'crash-the-river-rascal', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (106, 106, N'Fang T. Rattler', N'fang-t-rattler', 0, N'Fang_T_Rattler')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (107, 107, N'Mr. Moon', N'mr-moon', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (108, 108, N'Auggie', N'auggie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (109, 109, N'Charlie T. RiverDog', N'charlie-t-riverdog', 0, N'CharlieRiverDog')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (110, 110, N'Sherman the Shorebird', N'sherman-the-shorebird', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (111, 111, N'Guilford the Grasshopper', N'guilford-the-grasshopper', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (112, 112, N'Reedy Rip''It', N'reedy-ripit', 0, N'ReedyRipIt')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (113, 113, N'Woolie', N'woolie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (114, 114, N'Conrad the Crawdad', N'conrad-the-crawdad', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (115, 115, N'Tim E. Gator', N'tim-e-gator', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (116, 116, N'Buster', N'buster', 0, N'BlueClawsBuster')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (117, 117, N'Big L', N'big-l', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (118, 118, N'Romey', N'romey', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (119, 119, N'Gnate the Gnat', N'gnate-the-gnat', 1, N'gnatethegnat')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (120, 120, N'Chuck', N'chuck', 0, N'wv_powerCHUCK')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (121, 121, N'Ferrous', N'ferrous', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (122, 122, N'Abner', N'abner', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (123, 123, N'Homer', N'homer-2', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (124, 124, N'Sandy the Seagull', N'sandy-the-seagull', 0, N'SandytheSeagull')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (125, 125, N'C.T. the Tiger', N'ct-the-tiger', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (126, 126, N'Rascal', N'rascal-3', 0, N'HVRascal')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (127, 127, N'Bubba Grape', N'bubba-grape', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (128, 128, N'Canaligator', N'canaligator', 0, N'Canaligator')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (129, 129, N'Scrappy', N'scrappy', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (130, 130, N'Ike the Spike', N'ike-the-spike', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (131, 131, N'Scooter the Holy Cow', N'scooter-the-holy-cow', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (132, 132, N'South Paw', N'south-paw', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (133, 133, N'Champ', N'champ', 0, N'ChampVLM')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (134, 134, N'Boomer', N'boomer-2', 0, N'thegreatboomer')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (135, 135, N'Humphrey Hawk', N'humphrey-hawk', 0, N'HumphreyTheHawk')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (136, 136, N'Sluggo', N'sluggo', 0, N'SluggoEmeralds')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (137, 137, N'Webbly', N'webbly', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (138, 138, N'Barley', N'barley', 1, N'BarleytheHop')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (139, 139, N'Crater', N'crater', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (140, 140, N'Otto The Spokanasaurus', N'otto-the-spokanasaurus', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (141, 141, N'Dusty', N'dusty', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (142, 142, N'Bob Brown Bear', N'bob-brown-bear', 0, N'bobbrownbear')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (143, 143, N'Baby Jay', N'baby-jay', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (144, 144, N'Dingbat', N'dingbat', 0, N'DingbatBristol')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (145, 145, N'Bingo', N'bingo', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (146, 146, N'Blooper', N'blooper', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (147, 147, N'Rookie', N'rookie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (148, 148, N'Tennessee Tess', N'tennessee-tess', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (149, 149, N'Jay Cee', N'jay-cee', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (150, 150, N'Slider', N'slider', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (151, 151, N'Roscoe The P-Ray Rooster', N'roscoe-the-p-ray-rooster', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (152, 152, N'Slyder', N'slyder', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (153, 153, N'Homer', N'homer-3', 0, N'HomerMustang')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (154, 154, N'Corky', N'corky', 0, N'corkythecoyote')
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (155, 155, N'Orbit', N'orbit-3', 1, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (156, 156, N'Clark the Cougar', N'clark-the-cougar', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (157, 157, N'Charlie the Chukar', N'charlie-the-chukar', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (158, 158, N'Ollie Osprey', N'ollie-osprey', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (159, 159, N'Oggie', N'oggie', 0, NULL)
INSERT [dbo].[Mascots] ([Id], [TeamId], [Name], [Slug], [IsChampion], [TwitterHandle]) VALUES (160, 160, N'Hootz', N'hootz', 0, NULL)
SET IDENTITY_INSERT [dbo].[Mascots] OFF
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (1, 6, N'Buffalo Bisons', N'buffalo-bisons')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (2, 6, N'Charlotte Knights', N'charlotte-knights')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (3, 6, N'Columbus Clippers', N'columbus-clippers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (4, 6, N'Durham Bulls', N'durham-bulls')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (5, 6, N'Gwinnett Braves', N'gwinnett-braves')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (6, 6, N'Indianapolis Indians', N'indianapolis-indians')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (7, 6, N'Lehigh Valley IronPigs', N'lehigh-valley-ironpigs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (8, 6, N'Louisville Bats', N'louisville-bats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (9, 6, N'Norfolk Tides', N'norfolk-tides')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (10, 6, N'Pawtucket Red Sox', N'pawtucket-red-sox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (11, 6, N'Rochester Red Wings', N'rochester-red-wings')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (12, 6, N'Scranton/WB RailRiders', N'scrantonwb-railriders')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (13, 6, N'Syracuse Chiefs', N'syracuse-chiefs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (14, 6, N'Toledo Mud Hens', N'toledo-mud-hens')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (15, 10, N'Albuquerque Isotopes', N'albuquerque-isotopes')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (16, 10, N'Colorado Springs Sky Sox', N'colorado-springs-sky-sox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (17, 10, N'Fresno Grizzlies', N'fresno-grizzlies')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (18, 10, N'Iowa Cubs', N'iowa-cubs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (19, 10, N'Las Vegas 51s', N'las-vegas-51s')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (20, 10, N'Memphis Redbirds', N'memphis-redbirds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (21, 10, N'Nashville Sounds', N'nashville-sounds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (22, 10, N'New Orleans Zephyrs', N'new-orleans-zephyrs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (23, 10, N'Oklahoma City RedHawks', N'oklahoma-city-redhawks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (24, 10, N'Omaha Storm Chasers', N'omaha-storm-chasers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (25, 10, N'Reno Aces', N'reno-aces')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (26, 10, N'Round Rock Express', N'round-rock-express')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (27, 10, N'Sacramento River Cats', N'sacramento-river-cats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (28, 10, N'Salt Lake Bees', N'salt-lake-bees')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (29, 10, N'Tacoma Rainiers', N'tacoma-rainiers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (30, 10, N'Tucson Padres', N'tucson-padres')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (31, 4, N'Akron Aeros', N'akron-aeros')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (32, 4, N'Altoona Curve', N'altoona-curve')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (33, 4, N'Binghamton Mets', N'binghamton-mets')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (34, 4, N'Bowie Baysox', N'bowie-baysox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (35, 4, N'Erie SeaWolves', N'erie-seawolves')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (36, 4, N'Harrisburg Senators', N'harrisburg-senators')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (37, 4, N'New Britain Rock Cats', N'new-britain-rock-cats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (38, 4, N'New Hampshire Fisher Cats', N'new-hampshire-fisher-cats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (39, 4, N'Portland Sea Dogs', N'portland-sea-dogs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (40, 4, N'Reading Fightin Phils', N'reading-fightin-phils')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (41, 4, N'Richmond Flying Squirrels', N'richmond-flying-squirrels')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (42, 4, N'Trenton Thunder', N'trenton-thunder')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (43, 13, N'Birmingham Barons', N'birmingham-barons')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (44, 13, N'Chattanooga Lookouts', N'chattanooga-lookouts')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (45, 13, N'Huntsville Stars', N'huntsville-stars')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (46, 13, N'Jackson Generals', N'jackson-generals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (47, 13, N'Jacksonville Suns', N'jacksonville-suns')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (48, 13, N'Mississippi Braves', N'mississippi-braves')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (49, 13, N'Mobile BayBears', N'mobile-baybears')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (50, 13, N'Montgomery Biscuits', N'montgomery-biscuits')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (51, 13, N'Pensacola Blue Wahoos', N'pensacola-blue-wahoos')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (52, 13, N'Tennessee Smokies', N'tennessee-smokies')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (53, 14, N'Arkansas Travelers', N'arkansas-travelers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (54, 14, N'Corpus Christi Hooks', N'corpus-christi-hooks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (55, 14, N'Frisco RoughRiders', N'frisco-roughriders')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (56, 14, N'Midland RockHounds', N'midland-rockhounds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (57, 14, N'NW Arkansas Naturals', N'nw-arkansas-naturals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (58, 14, N'San Antonio Missions', N'san-antonio-missions')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (59, 14, N'Springfield Cardinals', N'springfield-cardinals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (60, 14, N'Tulsa Drillers', N'tulsa-drillers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (61, 2, N'Bakersfield Blaze', N'bakersfield-blaze')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (62, 2, N'High Desert Mavericks', N'high-desert-mavericks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (63, 2, N'Inland Empire 66ers', N'inland-empire-66ers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (64, 2, N'Lake Elsinore Storm', N'lake-elsinore-storm')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (65, 2, N'Lancaster JetHawks', N'lancaster-jethawks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (66, 2, N'Modesto Nuts', N'modesto-nuts')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (67, 2, N'Rancho Cuca. Quakes', N'rancho-cuca-quakes')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (68, 2, N'San Jose Giants', N'san-jose-giants')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (69, 2, N'Stockton Ports', N'stockton-ports')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (70, 2, N'Visalia Rawhide', N'visalia-rawhide')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (71, 3, N'Carolina Mudcats', N'carolina-mudcats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (72, 3, N'Frederick Keys', N'frederick-keys')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (73, 3, N'Lynchburg Hillcats', N'lynchburg-hillcats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (74, 3, N'Myrtle Beach Pelicans', N'myrtle-beach-pelicans')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (75, 3, N'Potomac Nationals', N'potomac-nationals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (76, 3, N'Salem Red Sox', N'salem-red-sox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (77, 3, N'Wilmington Blue Rocks', N'wilmington-blue-rocks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (78, 3, N'Winston-Salem Dash', N'winston-salem-dash')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (79, 5, N'Bradenton Marauders', N'bradenton-marauders')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (80, 5, N'Brevard County Manatees', N'brevard-county-manatees')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (81, 5, N'Charlotte Stone Crabs', N'charlotte-stone-crabs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (82, 5, N'Clearwater Threshers', N'clearwater-threshers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (83, 5, N'Daytona Cubs', N'daytona-cubs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (84, 5, N'Dunedin Blue Jays', N'dunedin-blue-jays')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (85, 5, N'Fort Myers Miracle', N'fort-myers-miracle')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (86, 5, N'Jupiter Hammerheads', N'jupiter-hammerheads')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (87, 5, N'Lakeland Flying Tigers', N'lakeland-flying-tigers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (88, 5, N'Palm Beach Cardinals', N'palm-beach-cardinals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (89, 5, N'St. Lucie Mets', N'st-lucie-mets')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (90, 5, N'Tampa Yankees', N'tampa-yankees')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (91, 7, N'Beloit Snappers', N'beloit-snappers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (92, 7, N'Bowling Green Hot Rods', N'bowling-green-hot-rods')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (93, 7, N'Burlington Bees', N'burlington-bees')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (94, 7, N'Cedar Rapids Kernels', N'cedar-rapids-kernels')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (95, 7, N'Clinton LumberKings', N'clinton-lumberkings')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (96, 7, N'Dayton Dragons', N'dayton-dragons')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (97, 7, N'Fort Wayne TinCaps', N'fort-wayne-tincaps')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (98, 7, N'Great Lakes Loons', N'great-lakes-loons')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (99, 7, N'Kane County Cougars', N'kane-county-cougars')
GO
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (100, 7, N'Lake County Captains', N'lake-county-captains')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (101, 7, N'Lansing Lugnuts', N'lansing-lugnuts')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (102, 7, N'Peoria Chiefs', N'peoria-chiefs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (103, 7, N'Quad Cities River Bandits', N'quad-cities-river-bandits')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (104, 7, N'South Bend Silver Hawks', N'south-bend-silver-hawks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (105, 7, N'West Michigan Whitecaps', N'west-michigan-whitecaps')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (106, 7, N'Wisconsin Timber Rattlers', N'wisconsin-timber-rattlers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (107, 12, N'Asheville Tourists', N'asheville-tourists')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (108, 12, N'Augusta GreenJackets', N'augusta-greenjackets')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (109, 12, N'Charleston RiverDogs', N'charleston-riverdogs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (110, 12, N'Delmarva Shorebirds', N'delmarva-shorebirds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (111, 12, N'Greensboro Grasshoppers', N'greensboro-grasshoppers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (112, 12, N'Greenville Drive', N'greenville-drive')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (113, 12, N'Hagerstown Suns', N'hagerstown-suns')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (114, 12, N'Hickory Crawdads', N'hickory-crawdads')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (115, 12, N'Kannapolis Intimidators', N'kannapolis-intimidators')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (116, 12, N'Lakewood BlueClaws', N'lakewood-blueclaws')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (117, 12, N'Lexington Legends', N'lexington-legends')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (118, 12, N'Rome Braves', N'rome-braves')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (119, 12, N'Savannah Sand Gnats', N'savannah-sand-gnats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (120, 12, N'West Virginia Power', N'west-virginia-power')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (121, 8, N'Aberdeen IronBirds', N'aberdeen-ironbirds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (122, 8, N'Auburn Doubledays', N'auburn-doubledays')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (123, 8, N'Batavia Muckdogs', N'batavia-muckdogs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (124, 8, N'Brooklyn Cyclones', N'brooklyn-cyclones')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (125, 8, N'Connecticut Tigers', N'connecticut-tigers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (126, 8, N'Hudson Valley Renegades', N'hudson-valley-renegades')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (127, 8, N'Jamestown Jammers', N'jamestown-jammers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (128, 8, N'Lowell Spinners', N'lowell-spinners')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (129, 8, N'Mahoning Valley Scrappers', N'mahoning-valley-scrappers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (130, 8, N'State College Spikes', N'state-college-spikes')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (131, 8, N'Staten Island Yankees', N'staten-island-yankees')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (132, 8, N'Tri-City ValleyCats', N'tri-city-valleycats')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (133, 8, N'Vermont Lake Monsters', N'vermont-lake-monsters')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (134, 8, N'Williamsport Crosscutters', N'williamsport-crosscutters')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (135, 9, N'Boise Hawks', N'boise-hawks')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (136, 9, N'Eugene Emeralds', N'eugene-emeralds')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (137, 9, N'Everett AquaSox', N'everett-aquasox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (138, 9, N'Hillsboro Hops', N'hillsboro-hops')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (139, 9, N'Salem-Keizer Volcanoes', N'salem-keizer-volcanoes')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (140, 9, N'Spokane Indians', N'spokane-indians')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (141, 9, N'Tri-City Dust Devils', N'tri-city-dust-devils')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (142, 9, N'Vancouver Canadians', N'vancouver-canadians')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (143, 1, N'Bluefield Blue Jays', N'bluefield-blue-jays')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (144, 1, N'Bristol White Sox', N'bristol-white-sox')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (145, 1, N'Burlington Royals', N'burlington-royals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (146, 1, N'Danville Braves', N'danville-braves')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (147, 1, N'Elizabethton Twins', N'elizabethton-twins')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (148, 1, N'Greeneville Astros', N'greeneville-astros')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (149, 1, N'Johnson City Cardinals', N'johnson-city-cardinals')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (150, 1, N'Kingsport Mets', N'kingsport-mets')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (151, 1, N'Princeton Rays', N'princeton-rays')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (152, 1, N'Pulaski Mariners', N'pulaski-mariners')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (153, 11, N'Billings Mustangs', N'billings-mustangs')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (154, 11, N'Grand Junction Rockies', N'grand-junction-rockies')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (155, 11, N'Great Falls Voyagers', N'great-falls-voyagers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (156, 11, N'Helena Brewers', N'helena-brewers')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (157, 11, N'Idaho Falls Chukars', N'idaho-falls-chukars')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (158, 11, N'Missoula Osprey', N'missoula-osprey')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (159, 11, N'Ogden Raptors', N'ogden-raptors')
INSERT [dbo].[Teams] ([Id], [LeagueId], [Name], [Slug]) VALUES (160, 11, N'Orem Owlz', N'orem-owlz')
SET IDENTITY_INSERT [dbo].[Teams] OFF
ALTER TABLE [dbo].[Mascots]  WITH CHECK ADD  CONSTRAINT [FK_Mascot_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
GO
ALTER TABLE [dbo].[Mascots] CHECK CONSTRAINT [FK_Mascot_Team]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Team_League] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[Leagues] ([Id])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Team_League]
GO
USE [master]
GO
ALTER DATABASE [Mascots] SET  READ_WRITE 
GO
