USE [Test]
GO

/****** Object:  Table [dbo].[WorkerKYC]    Script Date: 18-10-2025 11:55:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerKYC](
	[KYCID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[PANNumber] [varchar](20) NULL,
	[VoterID] [varchar](20) NULL,
	[DrivingLicense] [varchar](20) NULL,
	[PassportNumber] [varchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[KYCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkerKYC] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerKYC] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerKYC] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[WorkerKYC]  WITH CHECK ADD  CONSTRAINT [FK_WorkerKYC_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerKYC] CHECK CONSTRAINT [FK_WorkerKYC_Worker]
GO

