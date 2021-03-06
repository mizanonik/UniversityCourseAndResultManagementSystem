USE [master]
GO
/****** Object:  Database [University_Course_And_Result_Managent_System]    Script Date: 3/31/2017 12:03:05 AM ******/
CREATE DATABASE [University_Course_And_Result_Managent_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University_Course_And_Result_Managent_System', FILENAME = N'd:\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\University_Course_And_Result_Managent_System.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_Course_And_Result_Managent_System_log', FILENAME = N'd:\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\University_Course_And_Result_Managent_System_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University_Course_And_Result_Managent_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET  MULTI_USER 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [University_Course_And_Result_Managent_System]
GO
/****** Object:  Table [dbo].[allocateClassroom]    Script Date: 3/31/2017 12:03:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allocateClassroom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmentId] [int] NOT NULL,
	[courseId] [int] NOT NULL,
	[roomId] [int] NOT NULL,
	[dayId] [int] NOT NULL,
	[fromTime] [varchar](50) NOT NULL,
	[toTime] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_allocateClassroom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[assignCourses]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[assignCourses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseId] [int] NOT NULL,
	[teacherId] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_assignCourses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[classroom]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[classroom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classroom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseCode] [varchar](50) NOT NULL,
	[courseName] [varchar](50) NOT NULL,
	[credit] [decimal](18, 2) NOT NULL,
	[description] [varchar](50) NULL,
	[departmentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[day]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[day](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_day] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[department]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[departmentName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[designation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enrollCourse]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enrollCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[regNo] [varchar](50) NOT NULL,
	[courseId] [varchar](50) NOT NULL,
	[enrollDate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_enrollTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[resultGrades]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[resultGrades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gradeLetter] [varchar](50) NOT NULL,
 CONSTRAINT [PK_gradeLetters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[semester]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[semester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[semester] [varchar](50) NOT NULL,
 CONSTRAINT [PK_semester] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[registrationNo] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contactNo] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[address] [varchar](50) NULL,
	[departmentId] [int] NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[studentResult]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[studentResult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[regNo] [varchar](50) NOT NULL,
	[courseId] [int] NOT NULL,
	[gradeId] [int] NOT NULL,
 CONSTRAINT [PK_studentResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](500) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contactNo] [varchar](50) NOT NULL,
	[designationId] [int] NOT NULL,
	[departmentId] [int] NOT NULL,
	[allottedCredit] [decimal](18, 2) NOT NULL,
	[remainingCredit] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[classScheduleInfo]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[classScheduleInfo]
AS
SELECT        d.id AS departmentId, d.departmentName, c.id AS courseId, c.courseCode, c.courseName, r.roomNo, da.code AS dayCode, da.day AS dayName, a.fromTime, a.toTime, a.status
FROM            dbo.allocateClassroom AS a FULL OUTER JOIN
                         dbo.course AS c ON c.id = a.courseId LEFT OUTER JOIN
                         dbo.department AS d ON d.id = c.departmentId LEFT OUTER JOIN
                         dbo.classroom AS r ON r.id = a.roomId LEFT OUTER JOIN
                         dbo.day AS da ON da.id = a.dayId

GO
/****** Object:  View [dbo].[courseDetailsWithTeacherSemesterDepartment]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[courseDetailsWithTeacherSemesterDepartment]
AS
SELECT        c.courseCode, c.courseName, c.id AS courseId, t.name AS teacherName, t.id AS teacherId, s.semester, c.departmentId, dbo.assignCourses.status
FROM            dbo.assignCourses FULL OUTER JOIN
                         dbo.course AS c ON c.id = dbo.assignCourses.courseId LEFT OUTER JOIN
                         dbo.teacher AS t ON t.id = dbo.assignCourses.teacherId INNER JOIN
                         dbo.semester AS s ON s.id = c.SemesterId

GO
/****** Object:  View [dbo].[courseWithAllocation]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[courseWithAllocation]
AS
SELECT        c.id, c.courseName, c.courseCode, a.id AS allocationId, d.id AS departmentId
FROM            dbo.allocateClassroom AS a FULL OUTER JOIN
                         dbo.course AS c ON c.id = a.courseId LEFT OUTER JOIN
                         dbo.department AS d ON d.id = c.departmentId

GO
/****** Object:  View [dbo].[courseWithAssignedTeacher]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[courseWithAssignedTeacher]
AS
SELECT        a.id AS assignId, c.id AS courseId, a.status, t.id AS teacherId, t.name, s.semester
FROM            dbo.assignCourses AS a INNER JOIN
                         dbo.teacher AS t ON a.teacherId = t.id INNER JOIN
                         dbo.course AS c ON c.id = a.courseId INNER JOIN
                         dbo.semester AS s ON s.id = c.SemesterId

GO
/****** Object:  View [dbo].[courseWithSemester]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[courseWithSemester]
AS
SELECT course.id, courseCode, course.courseName, semester.semester, departmentId
FROM course JOIN semester ON course.SemesterId = Semester.Id
GO
/****** Object:  View [dbo].[enrolledCourseByStudent]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[enrolledCourseByStudent]
AS
SELECT        s.registrationNo, s.id AS studentId, c.id AS courseId, c.courseName, c.courseCode, c.departmentId, dbo.enrollCourse.enrollDate, dbo.enrollCourse.id AS enrollId
FROM            dbo.enrollCourse INNER JOIN
                         dbo.student AS s ON s.registrationNo = dbo.enrollCourse.regNo FULL OUTER JOIN
                         dbo.course AS c ON c.id = dbo.enrollCourse.courseId

GO
/****** Object:  View [dbo].[studentResultDetails]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[studentResultDetails]
AS
SELECT        s.id AS studentId, s.registrationNo, s.name, s.email, d.departmentName, c.courseName, c.courseCode, g.gradeLetter
FROM            dbo.studentResult AS sr INNER JOIN
                         dbo.student AS s ON s.id = sr.studentId INNER JOIN
                         dbo.department AS d ON d.id = s.departmentId INNER JOIN
                         dbo.course AS c ON c.id = sr.courseId INNER JOIN
                         dbo.resultGrades AS g ON g.id = sr.gradeId

GO
/****** Object:  View [dbo].[studentWithDepartmentName]    Script Date: 3/31/2017 12:03:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[studentWithDepartmentName]
AS
SELECT        dbo.student.name, dbo.student.id, dbo.student.email, dbo.student.contactNo, dbo.student.registrationNo, dbo.student.date, dbo.student.address, dbo.department.id AS departmentId, 
                         dbo.department.departmentName, dbo.department.code
FROM            dbo.student INNER JOIN
                         dbo.department ON dbo.department.id = dbo.student.departmentId

GO
SET IDENTITY_INSERT [dbo].[allocateClassroom] ON 

INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (4, 4, 19, 1, 1, N'02:15 PM', N'04:30 PM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (12, 5, 20, 1, 1, N'11:15 AM', N'02:15 PM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (20, 4, 19, 1, 1, N'04:30 PM', N'06:30 PM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (21, 5, 0, 2, 3, N'03:15 AM', N'11:15 PM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (23, 4, 19, 1, 1, N'08:15 AM', N'11:15 AM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (24, 4, 19, 1, 1, N'06:30 PM', N'08:30 PM', N'inactive')
INSERT [dbo].[allocateClassroom] ([id], [departmentId], [courseId], [roomId], [dayId], [fromTime], [toTime], [status]) VALUES (25, 4, 19, 1, 1, N'02:15 PM', N'04:30 PM', N'active')
SET IDENTITY_INSERT [dbo].[allocateClassroom] OFF
SET IDENTITY_INSERT [dbo].[assignCourses] ON 

INSERT [dbo].[assignCourses] ([id], [courseId], [teacherId], [status]) VALUES (1003, 19, 1004, N'inactive')
INSERT [dbo].[assignCourses] ([id], [courseId], [teacherId], [status]) VALUES (1004, 25, 3, N'inactive')
INSERT [dbo].[assignCourses] ([id], [courseId], [teacherId], [status]) VALUES (1005, 21, 3, N'inactive')
INSERT [dbo].[assignCourses] ([id], [courseId], [teacherId], [status]) VALUES (1006, 25, 3, N'active')
INSERT [dbo].[assignCourses] ([id], [courseId], [teacherId], [status]) VALUES (1007, 19, 1004, N'active')
SET IDENTITY_INSERT [dbo].[assignCourses] OFF
SET IDENTITY_INSERT [dbo].[classroom] ON 

INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (1, N'A-101')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (2, N'A-102')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (3, N'A-103')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (4, N'A-104')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (5, N'B-101')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (6, N'B-102')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (7, N'B-103')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (8, N'C-101')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (9, N'C-102')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (10, N'D-101')
INSERT [dbo].[classroom] ([id], [roomNo]) VALUES (11, N'D-102')
SET IDENTITY_INSERT [dbo].[classroom] OFF
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (19, N'CSE-1102', N'Basic Programming', CAST(3.00 AS Decimal(18, 2)), N'Introduction to computer Programming', 4, 2)
INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (20, N'EEE-1102', N'Basic Electronics', CAST(3.50 AS Decimal(18, 2)), N'Basic Concept of Electronics', 5, 2)
INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (21, N'CSE-2101', N'Data Structures', CAST(4.00 AS Decimal(18, 2)), N'Introduction to computer Algorithms', 4, 3)
INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (23, N'PHY-1101', N'Physics-1', CAST(3.50 AS Decimal(18, 2)), N'Basic Concept of physics', 13, 1)
INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (24, N'CSE-3101', N'Discreate Mathematics', CAST(4.00 AS Decimal(18, 2)), N'Basic knowledge in Algorithms', 4, 3)
INSERT [dbo].[course] ([id], [courseCode], [courseName], [credit], [description], [departmentId], [SemesterId]) VALUES (25, N'CSE-3601', N'Data Communication', CAST(4.50 AS Decimal(18, 2)), N'Basic knowledge in networking and communication', 4, 6)
SET IDENTITY_INSERT [dbo].[course] OFF
SET IDENTITY_INSERT [dbo].[day] ON 

INSERT [dbo].[day] ([id], [day], [code]) VALUES (1, N'Saturday', N'Sat')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (2, N'Sunday', N'Sun')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (3, N'Monday', N'Mon')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (4, N'Tuesday', N'Tue')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (5, N'Wednesday', N'Wed')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (6, N'Thursday', N'Thu')
INSERT [dbo].[day] ([id], [day], [code]) VALUES (7, N'Friday', N'Fri')
SET IDENTITY_INSERT [dbo].[day] OFF
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (4, N'CSE', N'Computer Science & Engineering')
INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (5, N'EEE', N'Electrical & Electronics Engineering')
INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (13, N'PHY', N'Physics')
INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (14, N'CHEM', N'Chemistry')
INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (17, N'BBA', N'Bachelor of Business Administration')
INSERT [dbo].[department] ([id], [code], [departmentName]) VALUES (18, N'ETE', N'Electrical and Telecommunication Engineering')
SET IDENTITY_INSERT [dbo].[department] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([id], [designation]) VALUES (1, N'Professor')
INSERT [dbo].[Designation] ([id], [designation]) VALUES (2, N'Associate Professor')
INSERT [dbo].[Designation] ([id], [designation]) VALUES (3, N'Assistant Professor')
INSERT [dbo].[Designation] ([id], [designation]) VALUES (4, N'Lecturer')
INSERT [dbo].[Designation] ([id], [designation]) VALUES (5, N'Assistant Lecturer')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[enrollCourse] ON 

INSERT [dbo].[enrollCourse] ([id], [regNo], [courseId], [enrollDate]) VALUES (2, N'CSE-2017-001', N'19', N'2017-03-18')
INSERT [dbo].[enrollCourse] ([id], [regNo], [courseId], [enrollDate]) VALUES (3, N'CSE-2017-002', N'21', N'2017-03-18')
INSERT [dbo].[enrollCourse] ([id], [regNo], [courseId], [enrollDate]) VALUES (6, N'CSE-2017-001', N'21', N'2017-03-19')
SET IDENTITY_INSERT [dbo].[enrollCourse] OFF
SET IDENTITY_INSERT [dbo].[resultGrades] ON 

INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (1, N'A+')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (2, N'A')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (3, N'A-')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (4, N'B+')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (5, N'B')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (6, N'B-')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (7, N'C+')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (8, N'C')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (9, N'C-')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (10, N'D+')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (11, N'D')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (12, N'D-')
INSERT [dbo].[resultGrades] ([id], [gradeLetter]) VALUES (13, N'F')
SET IDENTITY_INSERT [dbo].[resultGrades] OFF
SET IDENTITY_INSERT [dbo].[semester] ON 

INSERT [dbo].[semester] ([id], [semester]) VALUES (1, N'1st')
INSERT [dbo].[semester] ([id], [semester]) VALUES (2, N'2nd')
INSERT [dbo].[semester] ([id], [semester]) VALUES (3, N'3rd')
INSERT [dbo].[semester] ([id], [semester]) VALUES (4, N'4th')
INSERT [dbo].[semester] ([id], [semester]) VALUES (5, N'5th')
INSERT [dbo].[semester] ([id], [semester]) VALUES (6, N'6th')
INSERT [dbo].[semester] ([id], [semester]) VALUES (7, N'7th')
INSERT [dbo].[semester] ([id], [semester]) VALUES (8, N'8th')
SET IDENTITY_INSERT [dbo].[semester] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [name], [registrationNo], [email], [contactNo], [date], [address], [departmentId]) VALUES (15, N'Onik', N'CSE-2017-001', N'mizanonik@gmail.com', N'32135454', CAST(0x973C0B00 AS Date), N'Chittagong', 4)
INSERT [dbo].[student] ([id], [name], [registrationNo], [email], [contactNo], [date], [address], [departmentId]) VALUES (16, N'Malek', N'CHEM-2017-001', N'malek@gmail.com', N'13564515', CAST(0x973C0B00 AS Date), N'Ctg', 14)
INSERT [dbo].[student] ([id], [name], [registrationNo], [email], [contactNo], [date], [address], [departmentId]) VALUES (17, N'sadek', N'PHY-2017-001', N'sadek@gmail.com', N'243543534', CAST(0x9E3C0B00 AS Date), N'ctg', 13)
INSERT [dbo].[student] ([id], [name], [registrationNo], [email], [contactNo], [date], [address], [departmentId]) VALUES (18, N'Imran', N'CSE-2017-002', N'imran@gmail.com', N'5453643515151', CAST(0x953C0B00 AS Date), N'Badurtala', 4)
SET IDENTITY_INSERT [dbo].[student] OFF
SET IDENTITY_INSERT [dbo].[studentResult] ON 

INSERT [dbo].[studentResult] ([id], [studentId], [regNo], [courseId], [gradeId]) VALUES (1, 15, N'CSE-2017-001', 19, 2)
INSERT [dbo].[studentResult] ([id], [studentId], [regNo], [courseId], [gradeId]) VALUES (2, 15, N'CSE-2017-001', 21, 1)
SET IDENTITY_INSERT [dbo].[studentResult] OFF
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [name], [address], [email], [contactNo], [designationId], [departmentId], [allottedCredit], [remainingCredit]) VALUES (3, N'Masum', N'chittagong', N'masum@gmail.com', N'43242354234', 2, 4, CAST(20.00 AS Decimal(18, 2)), CAST(15.50 AS Decimal(18, 2)))
INSERT [dbo].[teacher] ([id], [name], [address], [email], [contactNo], [designationId], [departmentId], [allottedCredit], [remainingCredit]) VALUES (5, N'sakib', N'dhaka', N'sakib@gmail.com', N'1313561313', 3, 4, CAST(22.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)))
INSERT [dbo].[teacher] ([id], [name], [address], [email], [contactNo], [designationId], [departmentId], [allottedCredit], [remainingCredit]) VALUES (1004, N'Onik', N'Chittagong', N'mizanonik@gmail.com', N'01764144894', 3, 4, CAST(22.00 AS Decimal(18, 2)), CAST(19.00 AS Decimal(18, 2)))
INSERT [dbo].[teacher] ([id], [name], [address], [email], [contactNo], [designationId], [departmentId], [allottedCredit], [remainingCredit]) VALUES (1005, N'Maruf', N'chittagong', N'maruf@gmail.com', N'01845745784', 1, 4, CAST(20.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[teacher] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_department]    Script Date: 3/31/2017 12:03:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_department] ON [dbo].[department]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_department_1]    Script Date: 3/31/2017 12:03:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_department_1] ON [dbo].[department]
(
	[departmentName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[assignCourses]  WITH CHECK ADD  CONSTRAINT [FK_assignCourses_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[assignCourses] CHECK CONSTRAINT [FK_assignCourses_course]
GO
ALTER TABLE [dbo].[assignCourses]  WITH CHECK ADD  CONSTRAINT [FK_assignCourses_Teacher] FOREIGN KEY([teacherId])
REFERENCES [dbo].[teacher] ([id])
GO
ALTER TABLE [dbo].[assignCourses] CHECK CONSTRAINT [FK_assignCourses_Teacher]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_department] FOREIGN KEY([departmentId])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_department]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[semester] ([id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_semester]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_department] FOREIGN KEY([departmentId])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_department]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_department] FOREIGN KEY([departmentId])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_Teacher_department]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Designation] FOREIGN KEY([designationId])
REFERENCES [dbo].[Designation] ([id])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_Teacher_Designation]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 250
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "da"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 347
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'classScheduleInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'classScheduleInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'classScheduleInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "assignCourses"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 138
               Left = 251
               Bottom = 234
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseDetailsWithTeacherSemesterDepartment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseDetailsWithTeacherSemesterDepartment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 119
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseWithAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseWithAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 459
               Bottom = 136
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 667
               Bottom = 102
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseWithAssignedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'courseWithAssignedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "enrollCourse"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enrolledCourseByStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enrolledCourseByStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 251
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 138
               Left = 259
               Bottom = 268
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 252
               Left = 38
               Bottom = 348
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'studentResultDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'studentResultDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "student"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'studentWithDepartmentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'studentWithDepartmentName'
GO
USE [master]
GO
ALTER DATABASE [University_Course_And_Result_Managent_System] SET  READ_WRITE 
GO
