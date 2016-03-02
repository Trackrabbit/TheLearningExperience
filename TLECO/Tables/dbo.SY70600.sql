CREATE TABLE [dbo].[SY70600]
(
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[Report_Selection] [smallint] NOT NULL,
[ASECTMNT] [tinyint] NOT NULL,
[PRTOFLNT] [tinyint] NOT NULL,
[PRTOPRNT] [tinyint] NOT NULL,
[PRTOSCNT] [tinyint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPRTFTYP] [smallint] NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Named_Printers] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70600] ADD CONSTRAINT [PKSY70600] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70600].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[Report_Selection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[ASECTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[PRTOFLNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[PRTOPRNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[PRTOSCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70600].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70600].[XPRTFTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70600].[RPRTNAME]'
GO
GRANT SELECT ON  [dbo].[SY70600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70600] TO [DYNGRP]
GO
