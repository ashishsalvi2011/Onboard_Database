USE [Test]
GO

/****** Object:  Table [dbo].[SkillMaster]    Script Date: 18-10-2025 11:54:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SkillMaster](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[SkillCategoryId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SkillName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SkillMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[SkillMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[SkillMaster]  WITH CHECK ADD  CONSTRAINT [FK_SkillMaster_SkillCategory] FOREIGN KEY([SkillCategoryId])
REFERENCES [dbo].[SkillCategory] ([SkillCategoryId])
GO

ALTER TABLE [dbo].[SkillMaster] CHECK CONSTRAINT [FK_SkillMaster_SkillCategory]
GO

