USE [Test]
GO

/****** Object:  Table [dbo].[WorkerPermanentAddress]    Script Date: 18-10-2025 11:55:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerPermanentAddress](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[Address1] [varchar](255) NULL,
	[Address2] [varchar](255) NULL,
	[Address3] [varchar](255) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[PinCode] [varchar](10) NULL,
	[Country] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkerPermanentAddress] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerPermanentAddress] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerPermanentAddress] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[WorkerPermanentAddress]  WITH CHECK ADD  CONSTRAINT [FK_PermanentAddress_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerPermanentAddress] CHECK CONSTRAINT [FK_PermanentAddress_Worker]
GO

