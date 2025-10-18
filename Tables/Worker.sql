USE [Test]
GO

/****** Object:  Table [dbo].[Worker]    Script Date: 18-10-2025 11:55:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Worker](
	[WorkerID] [int] IDENTITY(1,1) NOT NULL,
	[AadhaarNumber] [varchar](20) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[FatherOrSpouseName] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfBirth] [date] NULL,
	[MaritalStatus] [varchar](20) NULL,
	[PlaceOfBirth] [varchar](100) NULL,
	[MotherTongue] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNumber] [varchar](20) NULL,
	[TelephoneNumber] [varchar](20) NULL,
	[SeriousMedicalHistory] [varchar](255) NULL,
	[CovidDetails] [varchar](255) NULL,
	[NumOfDependents] [int] NULL,
	[Religion] [varchar](50) NULL,
	[Photograph] [varbinary](max) NULL,
	[IsOnboard] [bit] NOT NULL,
	[HROnboardedBy] [varchar](100) NULL,
	[HROnboardedOn] [datetime] NULL,
	[OnboardRemark] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AadhaarNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Worker] ADD  DEFAULT ((0)) FOR [IsOnboard]
GO

ALTER TABLE [dbo].[Worker] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Worker] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[Worker] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectId])
GO

ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Project]
GO

ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Vendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([VendorId])
GO

ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Vendor]
GO

