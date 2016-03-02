CREATE TABLE [dbo].[SVC06016]
(
[ROUTEID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPSTATGRP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETTR] [numeric] (19, 5) NOT NULL,
[ROUTEPROC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVICEBOM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06016] ADD CONSTRAINT [PKSVC06016] PRIMARY KEY NONCLUSTERED  ([ROUTEID], [ITEMNMBR], [SEQUENCE1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[ROUTEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06016].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[DEPSTATGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06016].[ETTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[ROUTEPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06016].[SERVICEBOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06016].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC06016] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06016] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06016] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06016] TO [DYNGRP]
GO
