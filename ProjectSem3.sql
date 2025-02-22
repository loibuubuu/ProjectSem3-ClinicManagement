USE [ProjectSem3]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(100,1) NOT NULL,
	[AccountName] [varchar](120) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Role] [varchar](20) NOT NULL,
	[Phone] [varchar](20) NULL,
	[DoB] [datetime] NULL,
	[AccountHistory] [varchar](max) NULL,
	[AccountLock] [bit] NOT NULL,
	[Country] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[District] [varchar](100) NULL,
	[Street] [varchar](100) NULL,
	[Zipcode] [varchar](100) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentID] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentDate] [datetime] NULL,
	[Reasons] [varchar](1000) NULL,
	[AccountID] [int] NULL,
	[DoctorID] [int] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoriesID] [int] IDENTITY(202,1) NOT NULL,
	[CategoriesName] [varchar](100) NOT NULL,
	[CategoriesDescription] [varchar](1000) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryChild]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryChild](
	[CategoryChild_ID] [int] IDENTITY(300,1) NOT NULL,
	[CateChild_Name] [varchar](100) NULL,
	[CateChild_Description] [varchar](1000) NULL,
	[CategoriesID] [int] NULL,
 CONSTRAINT [PK_CategoryChild] PRIMARY KEY CLUSTERED 
(
	[CategoryChild_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorDetail]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorDetail](
	[DoctorID] [int] IDENTITY(1000,1) NOT NULL,
	[DrQualification] [varchar](100) NULL,
	[Specialist] [varchar](100) NULL,
	[DrDescription] [varchar](1000) NULL,
	[DrPosition] [varchar](100) NULL,
	[DrExperiences] [varchar](100) NULL,
	[DrImage] [varchar](1000) NULL,
	[AccountID] [int] NOT NULL,
	[DrLock] [bit] NULL,
 CONSTRAINT [PK_DoctorDetail] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(2001,1) NOT NULL,
	[FeedbackStar] [int] NULL,
	[FeedbackContent] [varchar](1000) NULL,
	[FeedbackDate] [datetime] NULL,
	[AccountID] [int] NULL,
	[FeedbackLock] [bit] NULL,
	[MedicineID] [int] NULL,
	[Medi_Equip_ID] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthInformations]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthInformations](
	[HealthInfoID] [int] IDENTITY(6000,1) NOT NULL,
	[Header] [varchar](100) NULL,
	[HeathContent] [varchar](1000) NULL,
	[HealthImage] [varchar](1000) NULL,
	[HeathReferences] [varchar](1000) NULL,
	[InfoLock] [bit] NULL,
 CONSTRAINT [PK_HealthInformations] PRIMARY KEY CLUSTERED 
(
	[HealthInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalEquipments]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalEquipments](
	[Medi_Equip_ID] [int] IDENTITY(900,1) NOT NULL,
	[EquipName] [varchar](100) NULL,
	[EquipSKU] [varchar](100) NULL,
	[EquipStatus] [varchar](100) NULL,
	[EquipTag] [varchar](100) NULL,
	[EquipDescription] [varchar](1000) NULL,
	[EquipPrice] [float] NULL,
	[EquipImage] [varchar](1000) NULL,
	[EquipLock] [bit] NULL,
	[CategoryChild_ID] [int] NOT NULL,
 CONSTRAINT [PK_MedicalEquipments] PRIMARY KEY CLUSTERED 
(
	[Medi_Equip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[MedicineID] [int] IDENTITY(800,1) NOT NULL,
	[MedicineName] [varchar](100) NULL,
	[MedicineSKU] [varchar](100) NULL,
	[MedicineStatus] [varchar](100) NULL,
	[MedicineTag] [varchar](100) NULL,
	[MedicineDescription] [varchar](1000) NULL,
	[MedicinePrice] [float] NULL,
	[MedicineImage] [varchar](1000) NULL,
	[MedicineLock] [bit] NULL,
	[MedicineExpiryDate] [datetime] NULL,
	[CategoryChild_ID] [int] NOT NULL,
 CONSTRAINT [PK_Medicines] PRIMARY KEY CLUSTERED 
(
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[OrderStatus] [varchar](30) NULL,
	[Quantity] [int] NULL,
	[PaymentMethod] [varchar](1000) NULL,
	[AccountID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
	[Medi_Equip_ID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seminar]    Script Date: 4/12/2020 3:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seminar](
	[SeminarID] [int] IDENTITY(700,1) NOT NULL,
	[SeminarTopic] [varchar](100) NULL,
	[Staff] [varchar](100) NULL,
	[SeminarDate] [datetime] NULL,
	[SeminarMaterials] [varchar](1000) NULL,
	[SeminarDescription] [varchar](500) NULL,
	[NumOfParticipants] [varchar](1000) NULL,
	[Staff_Info] [varchar](1000) NULL,
	[SeminarLock] [bit] NULL,
 CONSTRAINT [PK_Seminar] PRIMARY KEY CLUSTERED 
(
	[SeminarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_MedicalEquipments] FOREIGN KEY([Medi_Equip_ID])
REFERENCES [dbo].[MedicalEquipments] ([Medi_Equip_ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_MedicalEquipments]
GO
