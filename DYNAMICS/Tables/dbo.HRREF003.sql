CREATE TABLE [dbo].[HRREF003]
(
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRREF003] ADD CONSTRAINT [CK__HRREF003__CREATE__0AFFEA93] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[HRREF003] ADD CONSTRAINT [CK__HRREF003__CREATD__0A0BC65A] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[HRREF003] ADD CONSTRAINT [PKHRREF003] PRIMARY KEY CLUSTERED  ([BusObjKey], [Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRREF003] ON [dbo].[HRREF003] ([Attachment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HRREF003] ON [dbo].[HRREF003] ([BusObjKey], [DELETE1], [Attachment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRREF003].[BusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRREF003].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRREF003].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRREF003].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRREF003].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRREF003].[DELETE1]'
GO
GRANT SELECT ON  [dbo].[HRREF003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRREF003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRREF003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRREF003] TO [DYNGRP]
GO
