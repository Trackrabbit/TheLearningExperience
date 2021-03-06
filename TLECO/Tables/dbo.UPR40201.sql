CREATE TABLE [dbo].[UPR40201]
(
[SETUPKEY] [smallint] NOT NULL,
[AUTOASGNEMPID] [tinyint] NOT NULL,
[NEXTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40201] ADD CONSTRAINT [PKUPR40201] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40201].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40201].[AUTOASGNEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40201].[NEXTEMPID]'
GO
GRANT SELECT ON  [dbo].[UPR40201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40201] TO [DYNGRP]
GO
