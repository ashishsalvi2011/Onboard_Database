USE [Test]
GO

/****** Object:  Table [dbo].[Menus]    Script Date: 18-10-2025 11:52:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Menus](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[ParentMenuId] [int] NULL,
	[MenuName] [nvarchar](100) NOT NULL,
	[Route] [nvarchar](200) NULL,
	[ActionUrl] [nvarchar](300) NULL,
	[Icon] [nvarchar](100) NULL,
	[MenuOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Menus] ADD  DEFAULT ((0)) FOR [MenuOrder]
GO

ALTER TABLE [dbo].[Menus] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Menus] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Parent] FOREIGN KEY([ParentMenuId])
REFERENCES [dbo].[Menus] ([MenuId])
GO

ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Parent]
GO

