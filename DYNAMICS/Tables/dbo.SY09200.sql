CREATE TABLE [dbo].[SY09200]
(
[SECMODALTID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECMODALTDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY09200] ADD CONSTRAINT [CK__SY09200__CREATDD__7849DB76] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY09200] ADD CONSTRAINT [CK__SY09200__MODIFDT__793DFFAF] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY09200] ADD CONSTRAINT [PKSY09200] PRIMARY KEY NONCLUSTERED  ([SECMODALTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09200].[SECMODALTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09200].[SECMODALTDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09200].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY09200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09200].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY09200].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SY09200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY09200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY09200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY09200] TO [DYNGRP]
GO
