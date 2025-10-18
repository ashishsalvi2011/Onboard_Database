USE [Test]
GO

/****** Object:  Table [dbo].[Doctor_Medical_Verification]    Script Date: 18-10-2025 11:50:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Doctor_Medical_Verification](
	[verification_id] [int] IDENTITY(1,1) NOT NULL,
	[worker_id] [int] NOT NULL,
	[examination_date] [date] NOT NULL,
	[doctor_id] [int] NULL,
	[overall_result] [varchar](50) NULL,
	[prescription_attached] [bit] NULL,
	[acceptance_status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[verification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Doctor_Medical_Verification] ADD  DEFAULT ((0)) FOR [prescription_attached]
GO

ALTER TABLE [dbo].[Doctor_Medical_Verification]  WITH CHECK ADD  CONSTRAINT [FK_Doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[Doctor_Medical_Verification] CHECK CONSTRAINT [FK_Doctor]
GO

ALTER TABLE [dbo].[Doctor_Medical_Verification]  WITH CHECK ADD  CONSTRAINT [FK_Worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Worker] ([WorkerID])
GO

ALTER TABLE [dbo].[Doctor_Medical_Verification] CHECK CONSTRAINT [FK_Worker]
GO

