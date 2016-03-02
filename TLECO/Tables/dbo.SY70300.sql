CREATE TABLE [dbo].[SY70300]
(
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RPTGRNMS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCFGWIN] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70300] ADD CONSTRAINT [PKSY70300] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTCFGWIN], [RTGRSBIN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY70300] ON [dbo].[SY70300] ([RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70300].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70300].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70300].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70300].[RPTGRNMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70300].[RTCFGWIN]'
GO
GRANT SELECT ON  [dbo].[SY70300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70300] TO [DYNGRP]
GO
