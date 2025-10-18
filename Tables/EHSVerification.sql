USE [Test]
GO

/****** Object:  Table [dbo].[EHSVerification]    Script Date: 18-10-2025 11:51:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EHSVerification](
	[EHSVerificationID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[VendorID] [int] NULL,
	[EHSInCharge] [varchar](150) NULL,
	[HeightTest] [decimal](5, 2) NULL,
	[MedicalVerificationDoneBy] [varchar](150) NULL,
	[DoctorVerificationDoneBy] [varchar](150) NULL,
	[WorkForceCreatedBy] [varchar](150) NULL,
	[SkillVerificationDoneBy] [varchar](150) NULL,
	[SafetyInductionConductedOn] [date] NULL,
	[Remark] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](150) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[EHSVerificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EHSVerification] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[EHSVerification] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[EHSVerification] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[EHSVerification]  WITH CHECK ADD  CONSTRAINT [FK_EHSVerification_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorId])
GO

ALTER TABLE [dbo].[EHSVerification] CHECK CONSTRAINT [FK_EHSVerification_Vendor]
GO

ALTER TABLE [dbo].[EHSVerification]  WITH CHECK ADD  CONSTRAINT [FK_EHSVerification_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[EHSVerification] CHECK CONSTRAINT [FK_EHSVerification_Worker]
GO

