USE [master]
GO
/****** Object:  Database [bdpsg]    Script Date: 01/07/2021 00:26:40 ******/
CREATE DATABASE [bdpsg]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdpsg', FILENAME = N'D:\win10\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bdpsg.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bdpsg_log', FILENAME = N'D:\win10\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bdpsg_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bdpsg] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdpsg].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdpsg] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdpsg] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdpsg] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdpsg] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdpsg] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdpsg] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdpsg] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdpsg] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdpsg] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdpsg] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdpsg] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdpsg] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdpsg] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdpsg] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdpsg] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bdpsg] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdpsg] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdpsg] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdpsg] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdpsg] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdpsg] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdpsg] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdpsg] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bdpsg] SET  MULTI_USER 
GO
ALTER DATABASE [bdpsg] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdpsg] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdpsg] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdpsg] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bdpsg] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bdpsg] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bdpsg] SET QUERY_STORE = OFF
GO
USE [bdpsg]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 01/07/2021 00:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[alunoid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Aluno] PRIMARY KEY CLUSTERED 
(
	[alunoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 01/07/2021 00:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[cursoid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[cursoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listapresenca]    Script Date: 01/07/2021 00:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listapresenca](
	[listadepresencaid] [int] IDENTITY(1,1) NOT NULL,
	[alunoid] [int] NOT NULL,
	[turmaid] [int] NOT NULL,
	[cursoid] [int] NOT NULL,
	[professorid] [int] NOT NULL,
	[presenca] [bit] NOT NULL,
 CONSTRAINT [PK_Listapresenca] PRIMARY KEY CLUSTERED 
(
	[listadepresencaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 01/07/2021 00:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[professorid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Professor] PRIMARY KEY CLUSTERED 
(
	[professorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 01/07/2021 00:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[turmaid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Turma] PRIMARY KEY CLUSTERED 
(
	[turmaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aluno] ON 

INSERT [dbo].[Aluno] ([alunoid], [nome]) VALUES (1, N'Rodrigo dos Santos de Souza')
INSERT [dbo].[Aluno] ([alunoid], [nome]) VALUES (2, N'Silvio Dias Ferreira')
INSERT [dbo].[Aluno] ([alunoid], [nome]) VALUES (3, N'Antônio Anes')
INSERT [dbo].[Aluno] ([alunoid], [nome]) VALUES (4, N'Emily')
INSERT [dbo].[Aluno] ([alunoid], [nome]) VALUES (5, N'Paullo Quadros')
SET IDENTITY_INSERT [dbo].[Aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([cursoid], [descricao]) VALUES (1, N'Engenharia de Software')
INSERT [dbo].[Curso] ([cursoid], [descricao]) VALUES (2, N'Sistemas de Informação')
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[Listapresenca] ON 

INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (2, 4, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (3, 5, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (4, 2, 1, 2, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (5, 3, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (6, 1, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (7, 4, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (8, 5, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (9, 2, 1, 1, 1, 1)
INSERT [dbo].[Listapresenca] ([listadepresencaid], [alunoid], [turmaid], [cursoid], [professorid], [presenca]) VALUES (10, 3, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Listapresenca] OFF
GO
SET IDENTITY_INSERT [dbo].[Professor] ON 

INSERT [dbo].[Professor] ([professorid], [nome]) VALUES (1, N'WMaldonado')
SET IDENTITY_INSERT [dbo].[Professor] OFF
GO
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([turmaid], [descricao]) VALUES (1, N'H1')
INSERT [dbo].[Turma] ([turmaid], [descricao]) VALUES (2, N'H2')
SET IDENTITY_INSERT [dbo].[Turma] OFF
GO
ALTER TABLE [dbo].[Listapresenca]  WITH CHECK ADD  CONSTRAINT [FK_Listapresenca_Aluno] FOREIGN KEY([alunoid])
REFERENCES [dbo].[Aluno] ([alunoid])
GO
ALTER TABLE [dbo].[Listapresenca] CHECK CONSTRAINT [FK_Listapresenca_Aluno]
GO
ALTER TABLE [dbo].[Listapresenca]  WITH CHECK ADD  CONSTRAINT [FK_Listapresenca_Curso] FOREIGN KEY([cursoid])
REFERENCES [dbo].[Curso] ([cursoid])
GO
ALTER TABLE [dbo].[Listapresenca] CHECK CONSTRAINT [FK_Listapresenca_Curso]
GO
ALTER TABLE [dbo].[Listapresenca]  WITH CHECK ADD  CONSTRAINT [FK_Listapresenca_Professor] FOREIGN KEY([professorid])
REFERENCES [dbo].[Professor] ([professorid])
GO
ALTER TABLE [dbo].[Listapresenca] CHECK CONSTRAINT [FK_Listapresenca_Professor]
GO
ALTER TABLE [dbo].[Listapresenca]  WITH CHECK ADD  CONSTRAINT [FK_Listapresenca_Turma] FOREIGN KEY([turmaid])
REFERENCES [dbo].[Turma] ([turmaid])
GO
ALTER TABLE [dbo].[Listapresenca] CHECK CONSTRAINT [FK_Listapresenca_Turma]
GO
USE [master]
GO
ALTER DATABASE [bdpsg] SET  READ_WRITE 
GO
