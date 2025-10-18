USE [Test]
GO

/****** Object:  Table [dbo].[MenuRoleMapping]    Script Date: 18-10-2025 11:52:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MenuRoleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CanView] [bit] NULL,
	[CanAdd] [bit] NULL,
	[CanEdit] [bit] NULL,
	[CanDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_MenuRole] UNIQUE NONCLUSTERED 
(
	[MenuId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT ((1)) FOR [CanView]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT ((0)) FOR [CanAdd]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT ((0)) FOR [CanEdit]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT ((0)) FOR [CanDelete]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[MenuRoleMapping] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[MenuRoleMapping]  WITH CHECK ADD FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([MenuId])
GO

ALTER TABLE [dbo].[MenuRoleMapping]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO

