USE [Test]
GO

/****** Object:  Table [dbo].[LoginOTPDetails]    Script Date: 18-10-2025 11:51:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LoginOTPDetails](
	[OTPId] [int] IDENTITY(1,1) NOT NULL,
	[MobileNo] [varchar](20) NOT NULL,
	[UserId] [int] NULL,
	[OTPCode] [varchar](10) NOT NULL,
	[OTPSentAt] [datetime] NOT NULL,
	[OTPExpiryAt] [datetime] NOT NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedAt] [datetime] NULL,
	[IPAddress] [varchar](50) NULL,
	[DeviceInfo] [varchar](200) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OTPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LoginOTPDetails] ADD  DEFAULT (getdate()) FOR [OTPSentAt]
GO

ALTER TABLE [dbo].[LoginOTPDetails] ADD  DEFAULT ((0)) FOR [IsVerified]
GO

ALTER TABLE [dbo].[LoginOTPDetails] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[LoginOTPDetails]  WITH CHECK ADD  CONSTRAINT [FK_LoginOTPDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[LoginOTPDetails] CHECK CONSTRAINT [FK_LoginOTPDetails_Users]
GO

