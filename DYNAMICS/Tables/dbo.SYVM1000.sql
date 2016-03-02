CREATE TABLE [dbo].[SYVM1000]
(
[PRODID] [smallint] NOT NULL,
[VERSIONSTRING_I] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SYVM1000] ADD CONSTRAINT [PKSYVM1000] PRIMARY KEY CLUSTERED  ([VERSIONSTRING_I], [USERID], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SYVM1000] ON [dbo].[SYVM1000] ([PRODID], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SYVM1000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SYVM1000].[VERSIONSTRING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SYVM1000].[USERID]'
GO
GRANT SELECT ON  [dbo].[SYVM1000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SYVM1000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SYVM1000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SYVM1000] TO [DYNGRP]
GO
