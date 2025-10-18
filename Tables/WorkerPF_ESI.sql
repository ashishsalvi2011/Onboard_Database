USE [Test]
GO

/****** Object:  Table [dbo].[WorkerPF_ESI]    Script Date: 18-10-2025 11:56:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerPF_ESI](
	[PFID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[UAN] [varchar](50) NULL,
	[UniversalAccountName] [varchar](100) NULL,
	[PFNumber] [varchar](50) NULL,
	[ESINumber] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkerPF_ESI] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerPF_ESI] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerPF_ESI] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO

ALTER TABLE [dbo].[WorkerPF_ESI]  WITH CHECK ADD  CONSTRAINT [FK_WorkerPF_ESI_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerPF_ESI] CHECK CONSTRAINT [FK_WorkerPF_ESI_Worker]
GO

