CREATE TABLE [dbo].[SVC00204]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMDTLID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Meter_1_Level] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00204] ADD CONSTRAINT [PKSVC00204] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [EQPLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00204].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00204].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00204].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00204].[SCHEDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00204].[PMDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00204].[Meter_1_Level]'
GO
GRANT SELECT ON  [dbo].[SVC00204] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00204] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00204] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00204] TO [DYNGRP]
GO
