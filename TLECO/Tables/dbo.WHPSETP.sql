CREATE TABLE [dbo].[WHPSETP]
(
[SEQNUMBR] [int] NOT NULL,
[WH_Database] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Server_ID] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WH_Allow_Database_Change] [tinyint] NOT NULL,
[WH_Allow_Server_Change] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WHPSETP] ADD CONSTRAINT [PKWHPSETP] PRIMARY KEY CLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPSETP].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPSETP].[WH_Database]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WHPSETP].[WH_Server_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPSETP].[WH_Allow_Database_Change]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WHPSETP].[WH_Allow_Server_Change]'
GO
GRANT SELECT ON  [dbo].[WHPSETP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WHPSETP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WHPSETP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WHPSETP] TO [DYNGRP]
GO
