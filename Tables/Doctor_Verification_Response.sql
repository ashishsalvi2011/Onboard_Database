USE [Test]
GO

/****** Object:  Table [dbo].[Doctor_Verification_Response]    Script Date: 18-10-2025 11:50:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Doctor_Verification_Response](
	[response_id] [int] IDENTITY(1,1) NOT NULL,
	[verification_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[boolean_response] [bit] NULL,
	[remarks] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[response_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[verification_id] ASC,
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Doctor_Verification_Response]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[Question_Master] ([question_id])
GO

ALTER TABLE [dbo].[Doctor_Verification_Response]  WITH CHECK ADD FOREIGN KEY([verification_id])
REFERENCES [dbo].[Doctor_Medical_Verification] ([verification_id])
GO

