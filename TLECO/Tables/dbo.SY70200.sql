CREATE TABLE [dbo].[SY70200]
(
[RTPACHIN] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RPTGRNMS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70200] ADD CONSTRAINT [PKSY70200] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY70200] ON [dbo].[SY70200] ([RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70200].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70200].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70200].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70200].[RPTGRNMS]'
GO
GRANT SELECT ON  [dbo].[SY70200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70200] TO [DYNGRP]
GO
