USE [Test]
GO

/****** Object:  Table [dbo].[WorkerHealthCheck]    Script Date: 18-10-2025 11:55:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerHealthCheck](
	[VerificationID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[HealthCheckDate] [date] NOT NULL,
	[WeightKg] [decimal](5, 2) NULL,
	[HeightCm] [decimal](5, 2) NULL,
	[SkinTemperatureDegC] [decimal](4, 1) NULL,
	[RespiratoryRate] [int] NULL,
	[BP_Systolic] [int] NULL,
	[BP_Diastolic] [int] NULL,
	[BMI] [decimal](5, 2) NULL,
	[SPO2] [decimal](4, 1) NULL,
	[BloodGroup] [varchar](5) NULL,
	[FastingBloodSugar] [decimal](5, 2) NULL,
	[PostprandialBloodSugar] [decimal](5, 2) NULL,
	[RandomBloodSugar] [decimal](5, 2) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VerificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkerHealthCheck] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerHealthCheck] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerHealthCheck]  WITH CHECK ADD  CONSTRAINT [FK_WorkerHealthCheck_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerHealthCheck] CHECK CONSTRAINT [FK_WorkerHealthCheck_Worker]
GO

