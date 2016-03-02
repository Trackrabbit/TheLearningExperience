CREATE TABLE [dbo].[SVC00925]
(
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVCCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKREQ] [tinyint] NOT NULL,
[TASKETTC] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00925] ADD CONSTRAINT [PKSVC00925] PRIMARY KEY NONCLUSTERED  ([SRVTYPE], [SRVCCD], [TASKCD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00925].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00925].[SRVCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00925].[TASKCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00925].[TASKREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00925].[TASKETTC]'
GO
GRANT SELECT ON  [dbo].[SVC00925] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00925] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00925] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00925] TO [DYNGRP]
GO