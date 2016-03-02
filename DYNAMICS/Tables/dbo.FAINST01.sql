CREATE TABLE [dbo].[FAINST01]
(
[CMPANYID] [smallint] NOT NULL,
[Major_Version] [smallint] NOT NULL,
[Minor_Version] [smallint] NOT NULL,
[Build_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FAINST01] ADD CONSTRAINT [PKFAINST01] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAINST01].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAINST01].[Major_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAINST01].[Minor_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAINST01].[Build_Number]'
GO
GRANT SELECT ON  [dbo].[FAINST01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FAINST01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FAINST01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FAINST01] TO [DYNGRP]
GO
