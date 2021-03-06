CREATE TABLE [dbo].[SVC00315]
(
[EQUIPID] [int] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00315] ADD CONSTRAINT [PKSVC00315] PRIMARY KEY CLUSTERED  ([EQUIPID], [SCHEDID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00315].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00315].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00315].[SCHEDID]'
GO
GRANT SELECT ON  [dbo].[SVC00315] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00315] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00315] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00315] TO [DYNGRP]
GO
