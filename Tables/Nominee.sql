USE [Test]
GO

/****** Object:  Table [dbo].[Nominee]    Script Date: 18-10-2025 11:52:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Nominee](
	[NomineeID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[SameAsEmergencyContact] [bit] NOT NULL,
	[SameAddressAsContact] [bit] NOT NULL,
	[NomineeName] [varchar](100) NULL,
	[NomineeRelation] [varchar](50) NULL,
	[NomineeAddress] [varchar](255) NULL,
	[NomineeMobileNumber] [varchar](20) NULL,
	[NomineeDateOfBirth] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NomineeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Nominee] ADD  DEFAULT ((0)) FOR [SameAsEmergencyContact]
GO

ALTER TABLE [dbo].[Nominee] ADD  DEFAULT ((0)) FOR [SameAddressAsContact]
GO

ALTER TABLE [dbo].[Nominee] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Nominee] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[Nominee] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[Nominee]  WITH CHECK ADD  CONSTRAINT [FK_Nominee_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[Nominee] CHECK CONSTRAINT [FK_Nominee_Worker]
GO

