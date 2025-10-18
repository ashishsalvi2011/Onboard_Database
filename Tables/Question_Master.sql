USE [Test]
GO

/****** Object:  Table [dbo].[Question_Master]    Script Date: 18-10-2025 11:54:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Question_Master](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[type_id] [int] NOT NULL,
	[question_text] [varchar](255) NOT NULL,
	[input_type] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question_Master]  WITH CHECK ADD FOREIGN KEY([type_id])
REFERENCES [dbo].[Question_Type] ([type_id])
GO

