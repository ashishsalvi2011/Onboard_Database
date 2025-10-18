USE [Test]
GO

/****** Object:  Table [dbo].[WorkerBankDetails]    Script Date: 18-10-2025 11:55:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerBankDetails](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[AccountHolderName] [varchar](100) NULL,
	[AccountNumber] [varchar](50) NULL,
	[IFSCCode] [varchar](20) NULL,
	[BankName] [varchar](100) NULL,
	[BankAddress] [varchar](255) NULL,
	[PostalCode] [varchar](10) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkerBankDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerBankDetails] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerBankDetails] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[WorkerBankDetails]  WITH CHECK ADD  CONSTRAINT [FK_WorkerBankDetails_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerBankDetails] CHECK CONSTRAINT [FK_WorkerBankDetails_Worker]
GO

