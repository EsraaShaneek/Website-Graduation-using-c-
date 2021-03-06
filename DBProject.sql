USE [master]
GO
/****** Object:  Database [DBProject]    Script Date: 04/12/2015 20:55:02 ******/
CREATE DATABASE [DBProject] ON  PRIMARY 
( NAME = N'DBProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DBProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DBProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBProject] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBProject] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DBProject] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DBProject] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DBProject] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DBProject] SET ARITHABORT OFF
GO
ALTER DATABASE [DBProject] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DBProject] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DBProject] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DBProject] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DBProject] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DBProject] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DBProject] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DBProject] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DBProject] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DBProject] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DBProject] SET  DISABLE_BROKER
GO
ALTER DATABASE [DBProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DBProject] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DBProject] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DBProject] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DBProject] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DBProject] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DBProject] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DBProject] SET  READ_WRITE
GO
ALTER DATABASE [DBProject] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DBProject] SET  MULTI_USER
GO
ALTER DATABASE [DBProject] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DBProject] SET DB_CHAINING OFF
GO
USE [DBProject]
GO
/****** Object:  Table [dbo].[tblClass]    Script Date: 04/12/2015 20:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClass](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[DesClass] [nvarchar](max) NULL,
	[picClass] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblClass] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblClass] ON
INSERT [dbo].[tblClass] ([ClassID], [ClassName], [DesClass], [picClass]) VALUES (1, N'Computer Engineering', N'Computer Engineering Department (CPE) The graduate program offers Master of Science (M.S.) in Computer Engineering. Currently, we have 75 students enrolled in this program. Our B.S. and M.S. graduates are recruited by major companies in Jordan and worldwide. Also, some of our students pursue their studies', N'Images/pic1cpe.jpg')
INSERT [dbo].[tblClass] ([ClassID], [ClassName], [DesClass], [picClass]) VALUES (2, N'Computer Information Systems', N'of Computer Information Systems (CIS) was originally established in 2000 as part of the Computer Science and Information Systems Department. In 2003, the CIS Department split from the Computer Science and Information Systems Department. The primary objective of the Department of CIS  is to graduate internationally competitive and highly qualified students. ', N'Images/pic1cis.jpg')
INSERT [dbo].[tblClass] ([ClassID], [ClassName], [DesClass], [picClass]) VALUES (3, N'Computer Science', N'Computer Science  was established in September 2000. The department branched out of the Applied Mathematics Department in 1998 to form a separate entity in the Faculty of Science. The Department is now an integral part of the Faculty of Computer and Information Technology.  ', N'Images/pic1cs.jpg')
INSERT [dbo].[tblClass] ([ClassID], [ClassName], [DesClass], [picClass]) VALUES (4, N'Network Engineering and Security', N'Network Engineering and Security at the Faculty of Computer and Information Technology was founded in 2009 to fulfill the growing market need for network engineering and security specialists, whether administrators, programmers, analysts, or support staff. ', N'Images/PIC2IEEE.jpg')
INSERT [dbo].[tblClass] ([ClassID], [ClassName], [DesClass], [picClass]) VALUES (5, N'Software Engineering', N'Software Engineering was established more than 30 years ago.  However, the bachelor''s degree programs in software engineering (SE) around the world have come into existence only in the last few years.  SE is an emerging from the need to a degree that fills the gap in the software industry and to meet the software quality requirements of the IEEE, ACM and other organizations. The main objectives of the software engineering are to develop high quality software, timely, within the budget and under the software production constraints.  These objectives can not be met without having a staff with the proper knowledge and experience in the theories and practices in software engineering.  ', N'Images/pic3se.jpg')
SET IDENTITY_INSERT [dbo].[tblClass] OFF
/****** Object:  StoredProcedure [dbo].[spGetProject]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spGetProject]
	
AS
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProject]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllProject]
	
AS
	
	RETURN
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStatus] ON
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (1, N'Accept')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (2, N'Not Accept')
SET IDENTITY_INSERT [dbo].[tblStatus] OFF
/****** Object:  Table [dbo].[tblUserType]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserType](
	[IDTypeUser] [int] IDENTITY(1,1) NOT NULL,
	[TypeNameUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUserType] PRIMARY KEY CLUSTERED 
(
	[IDTypeUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUserType] ON
INSERT [dbo].[tblUserType] ([IDTypeUser], [TypeNameUser]) VALUES (1, N'Admin')
INSERT [dbo].[tblUserType] ([IDTypeUser], [TypeNameUser]) VALUES (2, N'Doctor')
INSERT [dbo].[tblUserType] ([IDTypeUser], [TypeNameUser]) VALUES (3, N'Student')
SET IDENTITY_INSERT [dbo].[tblUserType] OFF
/****** Object:  Table [dbo].[tblUsers]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[NumUser] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassUser] [nvarchar](50) NOT NULL,
	[PicUser] [nvarchar](50) NULL,
	[DesUser] [nvarchar](max) NULL,
	[IDTypeUser] [int] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[NumUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (1, N'Ismail Hmeidi ', N'1', N'Images/Ismail I. Hmeidi.jpg', N'Department of Computer Information Systems-Acting chairperson of Department, Department of Computer Information Systems-Faculty member, Department of Computer Science-Faculty member Email: hmeidi@just.edu.jo  Website: http://www.cis.just.edu.jo/~people/faculty/ismail', 1)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (2, N'Dr. Amer Al-Badarneh ', N'1', N'Images/Amer F. Al-Badarneh.jpg', N'Department of Computer Information Systems-Faculty member, Department of Computer Science-Faculty member Email: amerb@just.edu.jo', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (3, N'Hassan M. Najadat ', N'1', N'Images/Hassan M. Najadat.jpg', N'Department of Computer Information Systems-Faculty member, Department of Computer Science-Faculty member Email: amerb@just.edu.jo', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (4, N'Mohammed Shatnawi ', N'1', N'Images/Mohammed Q. Shatnawi.jpg', N'Computer And Information Center-نائب مدير مركز, Department of Computer Information Systems-Faculty member', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (5, N'Mostafa Z. Ali ', N'1', N'Images/Mostafa Z. Ali.jpg', N'Department of Computer Information Systems-Faculty member', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (6, N'Rehab Duwairi ', N'1', N'Images/Rehab M. Duwairi.jpg', N'Department of Computer Information Systems-Faculty member, Department of Computer Science-Faculty member, Faculty Of Computer And Information Technology-Acting Dean', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (7, N'Khalid Izedin Alkhatib ', N'1', N'Images/Khalid I. Alkhatib.jpg', N'Department of Computer Information Systems-Faculty member', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (8, N'Qusai Q. Abuein ', N'1', N'Images/Qusai Q. Abuein.jpg', N'Department of Computer Information Systems-Faculty member  Email: qabuein@just.edu.jo ', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (9, N'Qussai Yaseen ', N'1', N'Images/Qussai M. Yaseen.jpg', N'Department of Computer Information Systems-Faculty member Email: qmyaseen@just.edu.jo', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (10, N'Rami S. Al-Gharaibeh ', N'1', N'Images/Rami S. Al-Gharaibeh.jpg', N'Department of Computer Information Systems-Faculty member, Vice dean-Vice Dean Email: rami@just.edu.jo', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (11, N'Eyad A. Alshareef ', N'1', N'Images/Eyad A. Alshareef.jpg', N'Department of Computer Information Systems-full time Lecturer Email: eyadsd@just.edu.jo', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (12, N'SALAM', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (13, N'DANA', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (14, N'RHAF', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (15, N'SEWAR', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (16, N'BYAN', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (17, N'ALI', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (18, N'MALEK', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (19, N'ahmad', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (20, N'samer', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (22, N'mohammad', N'1', N'Images/default.jpg', N' jordan university of science and technology ', 2)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (23, N'Bana', N'1', N'Images/default.jpg', N'no des', 3)
INSERT [dbo].[tblUsers] ([NumUser], [UserName], [PassUser], [PicUser], [DesUser], [IDTypeUser]) VALUES (24, N'rama', N'1', N'Images/default.jpg', N'no des', 3)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
/****** Object:  StoredProcedure [dbo].[spDeleteClass]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteClass]
	@ClassID int
AS
	DELETE FROM tblClass
WHERE ClassID = @ClassID
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllClass]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllClass]
	
AS
	select * from tblClass
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertClass]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertClass]


@ClassName nvarchar(50),
@DesClass  nvarchar(max),
@picClass nvarchar(50)
AS
	INSERT INTO tblClass (ClassName,DesClass,picClass)
	VALUES(@ClassName,@DesClass,@picClass)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateClass]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateClass]
	
	@ClassID int,
	@ClassName nvarchar(50),
@DesClass  nvarchar(max),
@picClass nvarchar(50)

AS
UPDATE tblClass
	SET ClassName=@ClassName  , DesClass=@DesClass ,picClass=@picClass
	WHERE ClassID=@ClassID

	RETURN
GO
/****** Object:  Table [dbo].[tblAssociationDocProjj]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssociationDocProjj](
	[IDProject] [int] IDENTITY(1,1) NOT NULL,
	[NameProject] [nvarchar](50) NOT NULL,
	[DesProject] [nvarchar](max) NULL,
	[NotsProject] [nvarchar](50) NULL,
	[PicProject] [nvarchar](50) NULL,
	[NumUserAssD] [int] NOT NULL,
	[CLassID] [int] NOT NULL,
	[projectStatus] [int] NULL,
 CONSTRAINT [PK_tblAssociationDocProjj] PRIMARY KEY CLUSTERED 
(
	[IDProject] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAssociationDocProjj] ON
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (1, N'Camera', N'This IS Project Android', N'No Nots', N'Images/PIC1.jpg', 2, 2, 2)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (3, N'News Project', N'This IS Project ASP.NET', N'No Nots', N'Images/PIC2.jpg', 2, 2, 2)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (5, N'Resarch', N'This IS Project java', N'we can we  do ', N'Images/PIC3.jpg', 3, 2, 2)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (6, N'Books WEB', N'This IS Project php', N'No Nots', N'Images/PIC14.jpg', 3, 2, 2)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (7, N'School WEB', N'This IS Project Android', N'', N'Images/PIC5.jpg', 3, 2, 1)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (9, N'Game', N'This IS Project C#', N'NO COMMENT', N'Images/pic14.jpg', 4, 2, 1)
INSERT [dbo].[tblAssociationDocProjj] ([IDProject], [NameProject], [DesProject], [NotsProject], [PicProject], [NumUserAssD], [CLassID], [projectStatus]) VALUES (11, N'Q1Q', N'This IS Project Q1Q', N'No any things', N'Images/PIC5.jpg', 4, 2, 1)
SET IDENTITY_INSERT [dbo].[tblAssociationDocProjj] OFF
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateUser]
	@NumUser int,
	@UserName nvarchar(50),
	@PassUser nvarchar(50),
	@PicUser nvarchar(50),
	@DesUser nvarchar(max),
	@IDTypeUser int
AS
	UPDATE tblUsers
	SET UserName=@UserName  , PassUser=@PassUser ,PicUser=@PicUser ,DesUser=@DesUser ,IDTypeUser=@IDTypeUser
	WHERE NumUser=@NumUser
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertUser]
	@UserName nvarchar(50),
	@PassUser nvarchar(50),
	@PicUser nvarchar(50),
	@DesUser nvarchar(max),
	@IDTypeUser int
AS
	INSERT INTO tblUsers (UserName,PassUser,PicUser,DesUser,IDTypeUser)
	VALUES(@UserName,@PassUser,@PicUser,@DesUser,@IDTypeUser)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteUser]
	
	
	@NumUser int
AS
	DELETE FROM tblUsers
WHERE NumUser = @NumUser
	
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllUser]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllUser]
	
AS
	select NumUser,UserName ,PassUser,PicUser ,DesUser ,tblUserType.TypeNameUser from tblUsers
	inner join tblUserType on tblUsers.IDTypeUser=tblUserType.IDTypeUser
	RETURN
GO
/****** Object:  Table [dbo].[tblMessage]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMessage](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectMess] [nvarchar](50) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[Sender] [int] NOT NULL,
	[Receiver] [int] NOT NULL,
	[DateMess] [datetime] NOT NULL,
 CONSTRAINT [PK_tblMessage] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMessage] ON
INSERT [dbo].[tblMessage] ([MessageID], [SubjectMess], [Text], [Sender], [Receiver], [DateMess]) VALUES (1, N'HW1', N'Complete hw1', 13, 12, CAST(0x0000A45D012762C0 AS DateTime))
INSERT [dbo].[tblMessage] ([MessageID], [SubjectMess], [Text], [Sender], [Receiver], [DateMess]) VALUES (2, N'HW2', N'Not Complete hw2', 13, 12, CAST(0x0000A45D012762C0 AS DateTime))
INSERT [dbo].[tblMessage] ([MessageID], [SubjectMess], [Text], [Sender], [Receiver], [DateMess]) VALUES (3, N'hw3', N'complete hw3', 12, 13, CAST(0x0000A45D012762C0 AS DateTime))
INSERT [dbo].[tblMessage] ([MessageID], [SubjectMess], [Text], [Sender], [Receiver], [DateMess]) VALUES (4, N'HW15', N'complet', 12, 12, CAST(0x0000A45D014C1804 AS DateTime))
INSERT [dbo].[tblMessage] ([MessageID], [SubjectMess], [Text], [Sender], [Receiver], [DateMess]) VALUES (5, N'hw5', N'good morning', 17, 13, CAST(0x0000A45D014DA2F0 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblMessage] OFF
/****** Object:  StoredProcedure [dbo].[spGetProjectDoctorOnly]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetProjectDoctorOnly]
	@NumUserAssD int
AS
	select *,PicProject from tblAssociationDocProjj
where NumUserAssD=@NumUserAssD
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateProjAss]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateProjAss]
    
	
	@IDProject int,
	@NameProject nvarchar(50),
	@DesProject  nvarchar(max),
	@NotsProject nvarchar(50),
	@PicProject nvarchar(50),
	@NumUserAssD int,
	@CLassID int
AS

UPDATE tblAssociationDocProjj
	SET NameProject=@NameProject  , DesProject=@DesProject ,NotsProject=@NotsProject ,PicProject=@PicProject ,NumUserAssD=@NumUserAssD,CLassID=@CLassID
	WHERE IDProject=@IDProject

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateProj]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateProj]
	
	
	@IDProject int,
	@NameProject nvarchar(50),
	@DesProject  nvarchar(max),
	@NotsProject nvarchar(50),
	@PicProject nvarchar(50),
	@NumUserAssD int,
	@CLassID int
AS

UPDATE tblAssociationDocProjj
	SET NameProject=@NameProject  , DesProject=@DesProject ,NotsProject=@NotsProject ,PicProject=@PicProject ,NumUserAssD=@NumUserAssD,CLassID=@CLassID
	WHERE IDProject=@IDProject


	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllMyMessages]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllMyMessages]
	@NumUserAssS int
AS
	select tblMessage.Sender,tblMessage.SubjectMess,tblMessage.Text,tblMessage.DateMess
from tblMessage
where tblMessage.Receiver=@NumUserAssS
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProjectCIS]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllProjectCIS]
	
AS
	select IDProject ,NameProject ,DesProject ,NotsProject,PicProject  , tblUsers.UserName ,tblStatus.StatusName
from tblAssociationDocProjj 
inner join tblStatus on tblAssociationDocProjj.projectStatus=tblStatus.StatusID
inner join tblUsers on tblAssociationDocProjj.NumUserAssD=tblUsers.NumUser

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProjectAccept]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllProjectAccept]
	
AS
select IDProject ,NameProject ,DesProject ,NotsProject,PicProject  , tblUsers.UserName ,tblStatus.StatusName
from tblAssociationDocProjj 
inner join tblStatus on tblAssociationDocProjj.projectStatus=tblStatus.StatusID
inner join tblUsers on tblAssociationDocProjj.NumUserAssD=tblUsers.NumUser
where tblAssociationDocProjj.projectStatus=1



           
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spDeleteProject]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteProject]
	@IDProject int	
AS
	
	
	DELETE FROM tblAssociationDocProjj
WHERE IDProject = @IDProject
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertProject]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertProject]
	@NameProject nvarchar(50),
	@DesProject  nvarchar(max),
	@NotsProject nvarchar(50),
	@PicProject nvarchar(50),
	@NumUserAssD int,
	@CLassID int ,
	@projectStatus int 


AS
	
	INSERT INTO tblAssociationDocProjj (NameProject,DesProject,NotsProject,PicProject,NumUserAssD,CLassID ,projectStatus)
	VALUES(@NameProject,@DesProject,@NotsProject,@PicProject,@NumUserAssD,@CLassID ,@projectStatus)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertMessage]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertMessage]
	@SubjectMess nvarchar(50),
	@Text nvarchar(max),
	@Sender int ,
	@Receiver int,
	@DateMess datetime

AS
		INSERT INTO tblMessage (SubjectMess,Text,Sender,Receiver,DateMess)
	VALUES(@SubjectMess,@Text,@Sender,@Receiver,@DateMess)
	RETURN
GO
/****** Object:  Table [dbo].[tblAssociationStu]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssociationStu](
	[NumUserAssS] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[IDProject] [int] NOT NULL,
	[IDStatus] [int] NULL,
	[DataUpdate] [datetime] NULL,
	[IDMessage] [int] NULL,
	[requestDate] [nvarchar](50) NULL,
	[IDStatusStu] [int] NULL,
 CONSTRAINT [PK_tblAssociationStu] PRIMARY KEY CLUSTERED 
(
	[NumUserAssS] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (12, 2, 1, 2, NULL, NULL, N'16/03/2015 05:55:28 م', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (13, 2, 1, 1, NULL, NULL, N'23/03/2015 11:24:57 ص', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (14, 2, 3, 1, NULL, NULL, N'16/03/2015 05:55:20 م', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (15, 2, 3, 2, NULL, NULL, N'15/03/2015 07:24:52 م', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (16, 2, 5, 1, NULL, NULL, N'15/03/2015 07:53:05 م', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (17, 2, 5, 2, NULL, NULL, N'15/03/2015 07:39:32 م', 1)
INSERT [dbo].[tblAssociationStu] ([NumUserAssS], [ClassID], [IDProject], [IDStatus], [DataUpdate], [IDMessage], [requestDate], [IDStatusStu]) VALUES (18, 2, 6, 1, NULL, NULL, N'15/03/2015 08:08:02 م', 1)
/****** Object:  StoredProcedure [dbo].[spUpdateStuToStu]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateStuToStu]
@NumUserAssS int,
@IDStatusStu int 
AS

update tblAssociationStu
set IDStatusStu=@IDStatusStu
where NumUserAssS=@NumUserAssS
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStatuseStu]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateStatuseStu]
	@IDProject int,
	@NumUserAssS int ,
	@requestDate nvarchar(50)

AS
	



UPDATE tblAssociationStu
SET  IDStatus=2
WHERE IDProject=@IDProject


	UPDATE tblAssociationStu
	SET  IDStatus=1 ,requestDate=@requestDate ,IDStatusStu=1
	WHERE IDProject=@IDProject and NumUserAssS=@NumUserAssS


update tblAssociationDocProjj
set projectStatus =2
where IDProject=@IDProject


	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertAssProjStu]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertAssProjStu]
	@NumUserAssS int,
	@ClassID int,
	@IDProject int ,
	@requestdate nvarchar(50)

AS


INSERT INTO tblAssociationStu (NumUserAssS,ClassID,IDProject,requestdate)
	VALUES(@NumUserAssS,@ClassID,@IDProject,@requestdate)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetStudentOnlyProjectWithStu]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetStudentOnlyProjectWithStu]
@IDProject int
AS
	select * from tblAssociationStu 
where IDProject=@IDProject and IDStatus=2
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetStudentOnlyProject]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetStudentOnlyProject]
	@IDProject int
AS

select tblAssociationDocProjj.IDProject ,tblAssociationStu.IDProject,tblAssociationStu.NumUserAssS ,tblAssociationStu.requestDate ,tblAssociationStu.IDStatus
from tblAssociationDocProjj
inner join tblAssociationStu on tblAssociationDocProjj.IDProject=tblAssociationStu.IDProject
where tblAssociationDocProjj.IDProject=@IDProject



	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStudentAss]    Script Date: 04/12/2015 20:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteStudentAss]
	@NumUserAssS int
AS
	DELETE FROM tblAssociationStu
WHERE NumUserAssS = @NumUserAssS
	
	RETURN
GO
/****** Object:  ForeignKey [FK_tblUsers_tblUserType]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblUserType] FOREIGN KEY([IDTypeUser])
REFERENCES [dbo].[tblUserType] ([IDTypeUser])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblUserType]
GO
/****** Object:  ForeignKey [FK_tblAssociationDocProjj_tblClass]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationDocProjj]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationDocProjj_tblClass] FOREIGN KEY([CLassID])
REFERENCES [dbo].[tblClass] ([ClassID])
GO
ALTER TABLE [dbo].[tblAssociationDocProjj] CHECK CONSTRAINT [FK_tblAssociationDocProjj_tblClass]
GO
/****** Object:  ForeignKey [FK_tblAssociationDocProjj_tblStatus]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationDocProjj]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationDocProjj_tblStatus] FOREIGN KEY([projectStatus])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblAssociationDocProjj] CHECK CONSTRAINT [FK_tblAssociationDocProjj_tblStatus]
GO
/****** Object:  ForeignKey [FK_tblAssociationDocProjj_tblUsers]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationDocProjj]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationDocProjj_tblUsers] FOREIGN KEY([NumUserAssD])
REFERENCES [dbo].[tblUsers] ([NumUser])
GO
ALTER TABLE [dbo].[tblAssociationDocProjj] CHECK CONSTRAINT [FK_tblAssociationDocProjj_tblUsers]
GO
/****** Object:  ForeignKey [FK_tblMessage_tblUsers]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblMessage]  WITH CHECK ADD  CONSTRAINT [FK_tblMessage_tblUsers] FOREIGN KEY([Receiver])
REFERENCES [dbo].[tblUsers] ([NumUser])
GO
ALTER TABLE [dbo].[tblMessage] CHECK CONSTRAINT [FK_tblMessage_tblUsers]
GO
/****** Object:  ForeignKey [FK_tblMessage_tblUsers1]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblMessage]  WITH CHECK ADD  CONSTRAINT [FK_tblMessage_tblUsers1] FOREIGN KEY([Sender])
REFERENCES [dbo].[tblUsers] ([NumUser])
GO
ALTER TABLE [dbo].[tblMessage] CHECK CONSTRAINT [FK_tblMessage_tblUsers1]
GO
/****** Object:  ForeignKey [FK_tblAssociationStu_tblAssociationDocProjj]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationStu]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationStu_tblAssociationDocProjj] FOREIGN KEY([IDProject])
REFERENCES [dbo].[tblAssociationDocProjj] ([IDProject])
GO
ALTER TABLE [dbo].[tblAssociationStu] CHECK CONSTRAINT [FK_tblAssociationStu_tblAssociationDocProjj]
GO
/****** Object:  ForeignKey [FK_tblAssociationStu_tblClass]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationStu]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationStu_tblClass] FOREIGN KEY([ClassID])
REFERENCES [dbo].[tblClass] ([ClassID])
GO
ALTER TABLE [dbo].[tblAssociationStu] CHECK CONSTRAINT [FK_tblAssociationStu_tblClass]
GO
/****** Object:  ForeignKey [FK_tblAssociationStu_tblMessage]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationStu]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationStu_tblMessage] FOREIGN KEY([IDMessage])
REFERENCES [dbo].[tblMessage] ([MessageID])
GO
ALTER TABLE [dbo].[tblAssociationStu] CHECK CONSTRAINT [FK_tblAssociationStu_tblMessage]
GO
/****** Object:  ForeignKey [FK_tblAssociationStu_tblStatus]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationStu]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationStu_tblStatus] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblAssociationStu] CHECK CONSTRAINT [FK_tblAssociationStu_tblStatus]
GO
/****** Object:  ForeignKey [FK_tblAssociationStu_tblUsers]    Script Date: 04/12/2015 20:55:19 ******/
ALTER TABLE [dbo].[tblAssociationStu]  WITH CHECK ADD  CONSTRAINT [FK_tblAssociationStu_tblUsers] FOREIGN KEY([NumUserAssS])
REFERENCES [dbo].[tblUsers] ([NumUser])
GO
ALTER TABLE [dbo].[tblAssociationStu] CHECK CONSTRAINT [FK_tblAssociationStu_tblUsers]
GO
