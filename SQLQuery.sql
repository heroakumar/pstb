 
USE [kincid_pstbt_db]
GO
/****** Object:  Table [dbo].[certificate]    Script Date: 1/29/2020 11:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[certificate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseType] [int] NOT NULL,
	[ApplicationNumber] [int] NOT NULL,
	[RegNo] [int] NOT NULL,
	[Name] [nvarchar](60) NULL,
	[Course] [nvarchar](60) NULL,
	[Institute] [nvarchar](100) NULL,
	[ModofDel] [int] NULL,
	[Address] [nvarchar](250) NULL,
	[Phone1] [nvarchar](15) NULL,
	[Phone2] [nvarchar](15) NULL,
	[OldName] [nvarchar](80) NULL,
	[OldFName] [nvarchar](80) NULL,
	[NewName] [nvarchar](80) NULL,
	[NewFName] [nvarchar](80) NULL,
	[NoObjCert] [int] NULL,
	[OtherText] [nvarchar](200) NULL,
	[DateOfSub] [nvarchar](20) NULL,
	[RegCard] [int] NULL,
	[DetailMarkCard] [int] NULL,
	[TanCert] [int] NULL,
	[DiplomaCert] [int] NULL,
	[fees] [decimal](18, 2) NOT NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dupcertificate]    Script Date: 1/29/2020 11:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dupcertificate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [int] NOT NULL,
	[Name] [nvarchar](60) NULL,
	[FName] [nvarchar](60) NULL,
	[Reason] [nvarchar](60) NULL,
	[Examination] [nvarchar](100) NULL,
	[RollNo] [int] NULL,
	[Session] [int] NULL,
	[TotalMark] [int] NULL,
	[ObtMark] [int] NULL,
	[Institute] [nvarchar](100) NULL,
	[Office] [nvarchar](100) NULL,
	[fees] [decimal](18, 2) NOT NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [pstbt_db] SET  READ_WRITE 
GO
