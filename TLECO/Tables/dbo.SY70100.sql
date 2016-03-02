CREATE TABLE [dbo].[SY70100]
(
[RPTGRIND] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[GRPSBIND] [smallint] NOT NULL,
[RPTINDX1] [smallint] NOT NULL,
[RPTINDX2] [smallint] NOT NULL,
[RTCFGWIN] [smallint] NOT NULL,
[RPTINDX3] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70100] ADD CONSTRAINT [PKSY70100] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN], [GRPSBIND]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70100].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[GRPSBIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[RPTINDX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[RPTINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70100].[RTCFGWIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70100].[RPTINDX3]'
GO
GRANT SELECT ON  [dbo].[SY70100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70100] TO [DYNGRP]
GO
