CREATE TABLE [dbo].[UPR70501]
(
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR70501] ADD CONSTRAINT [PKUPR70501] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN], [CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70501].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70501].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR70501].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70501].[CMPANYID]'
GO
GRANT SELECT ON  [dbo].[UPR70501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR70501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR70501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR70501] TO [DYNGRP]
GO
