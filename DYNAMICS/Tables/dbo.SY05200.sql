CREATE TABLE [dbo].[SY05200]
(
[DICTID] [smallint] NOT NULL,
[RESTYPE] [smallint] NOT NULL,
[RESID] [smallint] NOT NULL,
[RESTECHNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcludeFrom_1] [tinyint] NOT NULL,
[ExcludeFrom_2] [tinyint] NOT NULL,
[ExcludeFrom_3] [tinyint] NOT NULL,
[ExcludeFrom_4] [tinyint] NOT NULL,
[ExcludeFrom_5] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY05200] ADD CONSTRAINT [PKSY05200] PRIMARY KEY CLUSTERED  ([DICTID], [RESTYPE], [RESID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[RESTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[RESID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY05200].[RESTECHNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[ExcludeFrom_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[ExcludeFrom_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[ExcludeFrom_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[ExcludeFrom_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05200].[ExcludeFrom_5]'
GO
GRANT SELECT ON  [dbo].[SY05200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY05200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY05200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY05200] TO [DYNGRP]
GO
