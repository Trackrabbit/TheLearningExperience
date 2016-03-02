CREATE TABLE [dbo].[HRATT001]
(
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_Description] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[ODESCTN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRATT001] ADD CONSTRAINT [CK__HRATT001__CREATE__79D55E91] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[HRATT001] ADD CONSTRAINT [CK__HRATT001__CREATD__78E13A58] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[HRATT001] ADD CONSTRAINT [PKHRATT001] PRIMARY KEY CLUSTERED  ([Attachment_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRATT001].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRATT001].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRATT001].[Attachment_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRATT001].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRATT001].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRATT001].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRATT001].[ODESCTN]'
GO
GRANT SELECT ON  [dbo].[HRATT001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRATT001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRATT001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRATT001] TO [DYNGRP]
GO
