CREATE TABLE [dbo].[SY01900]
(
[CMPANYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01900] ADD CONSTRAINT [PKSY01900] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [USERID], [REPORTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01900].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01900].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01900].[REPORTID]'
GO
GRANT SELECT ON  [dbo].[SY01900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01900] TO [DYNGRP]
GO
