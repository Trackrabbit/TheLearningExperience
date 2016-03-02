CREATE TABLE [dbo].[SY04300]
(
[TRKLGOUT] [tinyint] NOT NULL,
[TRKROUT] [tinyint] NOT NULL,
[TRKPSTLOG_1] [binary] (4) NOT NULL,
[TRKPSTLOG_2] [binary] (4) NOT NULL,
[TRKPSTLOG_3] [binary] (4) NOT NULL,
[TRKPSTLOG_4] [binary] (4) NOT NULL,
[TRKPSTLOG_5] [binary] (4) NOT NULL,
[TRKPSTLOG_6] [binary] (4) NOT NULL,
[TRKDAFLS] [tinyint] NOT NULL,
[TRKDAFRM] [tinyint] NOT NULL,
[TRKDARPTS] [tinyint] NOT NULL,
[TRKFLOG] [tinyint] NOT NULL,
[TRKFADDS] [tinyint] NOT NULL,
[TRKFDEL] [tinyint] NOT NULL,
[TRKMODAC] [tinyint] NOT NULL,
[TRKRWACS] [tinyint] NOT NULL,
[TRKSETAD] [tinyint] NOT NULL,
[TRKSETDL] [tinyint] NOT NULL,
[TRKSETMD] [tinyint] NOT NULL,
[TRKTRXAD] [tinyint] NOT NULL,
[TRKTRXDL] [tinyint] NOT NULL,
[TRKTRXMD] [tinyint] NOT NULL,
[TRKFLMOD] [tinyint] NOT NULL,
[TRMFMANT] [tinyint] NOT NULL,
[TRKATFRMS] [tinyint] NOT NULL,
[TRKAREPT] [tinyint] NOT NULL,
[TrackSuccessfulSPAccess] [tinyint] NOT NULL,
[TrackDeniedSPAccess] [tinyint] NOT NULL,
[TRKSLOG] [tinyint] NOT NULL,
[TRKUTLS] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04300] ADD CONSTRAINT [PKSY04300] PRIMARY KEY NONCLUSTERED  ([TRKDARPTS]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKLGOUT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKROUT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKPSTLOG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKDAFLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKDAFRM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKDARPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKFLOG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKFADDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKFDEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKMODAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKRWACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKSETAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKSETDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKSETMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKTRXAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKTRXDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKTRXMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKFLMOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRMFMANT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKATFRMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKAREPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TrackSuccessfulSPAccess]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TrackDeniedSPAccess]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKSLOG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04300].[TRKUTLS]'
GO
GRANT SELECT ON  [dbo].[SY04300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04300] TO [DYNGRP]
GO
