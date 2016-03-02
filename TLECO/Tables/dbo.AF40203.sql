CREATE TABLE [dbo].[AF40203]
(
[REPORTID] [smallint] NOT NULL,
[ROWNMBR] [smallint] NOT NULL,
[RNGE] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OLDROW] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40203] ADD CONSTRAINT [PKAF40203] PRIMARY KEY NONCLUSTERED  ([REPORTID], [ROWNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AF40203] ON [dbo].[AF40203] ([REPORTID], [OLDROW], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AF40203] ON [dbo].[AF40203] ([REPORTID], [RNGE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40203].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40203].[ROWNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40203].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40203].[OLDROW]'
GO
GRANT SELECT ON  [dbo].[AF40203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40203] TO [DYNGRP]
GO