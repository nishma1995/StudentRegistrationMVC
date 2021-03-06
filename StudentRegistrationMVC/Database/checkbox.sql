USE [StudentRegistrationManagementSystem]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/13/2021 8:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Ug] [varchar](10) NULL,
	[Pg] [varchar](10) NULL,
	[Department] [varchar](30) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (1, N'nishma', N'kk house', N'Female', N'1', N'1', N'ComputerScience')
INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (2, N'taanim', N'kk house', N'Male', N'1', N'1', N'Electronics')
INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (3, N'manu', N'manjeri house', N'Male', N'0', N'0', N'Mechanical')
INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (4, N'jonu', N'heaven house', N'Male', N'0', N'1', N'Electronics')
INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (5, N'DINU', N'KL HOUSE', N'Male', N'1', N'1', N'Electrical')
INSERT [dbo].[Student] ([Id], [Name], [Address], [Gender], [Ug], [Pg], [Department]) VALUES (6, N'DINU', N'KL HOUSE', N'Male', N'1', N'1', N'Electrical')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
/****** Object:  StoredProcedure [dbo].[StudentSave]    Script Date: 6/13/2021 8:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StudentSave]

		@Name					VARCHAR(30)
		,	@Address			VARCHAR(50)
		,	@Gender				VARCHAR(20)
		,	@Ug					VARCHAR(10)
		,	@Pg					VARCHAR(10)
		,	@Department			VARCHAR(30)	
AS
BEGIN

INSERT INTO [dbo].[Student]
(
		[Name]
		,	[Address]
		,	[Gender]
		,	[Ug]
		,	[Pg]
		,	[Department]
)
VALUES
(
		@Name	
		,	@Address
		,	@Gender
		,	@Ug
		,	@Pg
		,	@Department
	
)
	
END
GO
