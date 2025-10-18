USE [Test]
GO

/****** Object:  Table [dbo].[WorkerSkillVerification]    Script Date: 18-10-2025 11:56:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerSkillVerification](
	[VerificationID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerID] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[SkillPerformance] [varchar](50) NOT NULL,
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

ALTER TABLE [dbo].[WorkerSkillVerification] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[WorkerSkillVerification] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkerSkillVerification]  WITH CHECK ADD  CONSTRAINT [FK_WorkerVerification_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[SkillMaster] ([SkillId])
GO

ALTER TABLE [dbo].[WorkerSkillVerification] CHECK CONSTRAINT [FK_WorkerVerification_Skill]
GO

ALTER TABLE [dbo].[WorkerSkillVerification]  WITH CHECK ADD  CONSTRAINT [FK_WorkerVerification_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[WorkerSkillVerification] CHECK CONSTRAINT [FK_WorkerVerification_Worker]
GO

