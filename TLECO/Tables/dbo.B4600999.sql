CREATE TABLE [dbo].[B4600999]
(
[BSSI_SSRS_Type] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Series_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SSRS_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SSRS_Version] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SSRS_DeploymentDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_SSRS_DeploymentLoc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600999] ADD CONSTRAINT [CK__B4600999__BSSI_S__4552E271] CHECK ((datepart(hour,[BSSI_SSRS_DeploymentDate])=(0) AND datepart(minute,[BSSI_SSRS_DeploymentDate])=(0) AND datepart(second,[BSSI_SSRS_DeploymentDate])=(0) AND datepart(millisecond,[BSSI_SSRS_DeploymentDate])=(0)))
GO
ALTER TABLE [dbo].[B4600999] ADD CONSTRAINT [PKB4600999] PRIMARY KEY NONCLUSTERED  ([BSSI_SSRS_Type], [Series_Name], [BSSI_SSRS_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600999].[BSSI_SSRS_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600999].[Series_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600999].[BSSI_SSRS_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600999].[BSSI_SSRS_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600999].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600999].[BSSI_SSRS_DeploymentDate]'
GO
GRANT SELECT ON  [dbo].[B4600999] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600999] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600999] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600999] TO [DYNGRP]
GO
