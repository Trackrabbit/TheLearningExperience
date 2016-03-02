CREATE TABLE [dbo].[FA01001]
(
[PURGEDATE] [datetime] NOT NULL,
[PURGETIME] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETIRED] [tinyint] NOT NULL,
[RETIREDCNT] [int] NOT NULL,
[DELETED] [tinyint] NOT NULL,
[DELETEDCNT] [int] NOT NULL,
[PARTIALOPEN] [tinyint] NOT NULL,
[PARTIALCNT] [int] NOT NULL,
[PRIORTODATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA01001] ADD CONSTRAINT [CK__FA01001__PURGETI__53633AE1] CHECK ((datepart(day,[PURGETIME])=(1) AND datepart(month,[PURGETIME])=(1) AND datepart(year,[PURGETIME])=(1900)))
GO
ALTER TABLE [dbo].[FA01001] ADD CONSTRAINT [CK__FA01001__PRIORTO__517AF26F] CHECK ((datepart(hour,[PRIORTODATE])=(0) AND datepart(minute,[PRIORTODATE])=(0) AND datepart(second,[PRIORTODATE])=(0) AND datepart(millisecond,[PRIORTODATE])=(0)))
GO
ALTER TABLE [dbo].[FA01001] ADD CONSTRAINT [CK__FA01001__PURGEDA__526F16A8] CHECK ((datepart(hour,[PURGEDATE])=(0) AND datepart(minute,[PURGEDATE])=(0) AND datepart(second,[PURGEDATE])=(0) AND datepart(millisecond,[PURGEDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01001] ADD CONSTRAINT [PKFA01001] PRIMARY KEY CLUSTERED  ([PURGEDATE], [PURGETIME], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA01001] ON [dbo].[FA01001] ([USERID], [PURGEDATE], [PURGETIME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01001].[PURGEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01001].[PURGETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[RETIRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[RETIREDCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[DELETED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[DELETEDCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[PARTIALOPEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01001].[PARTIALCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01001].[PRIORTODATE]'
GO
GRANT SELECT ON  [dbo].[FA01001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01001] TO [DYNGRP]
GO
