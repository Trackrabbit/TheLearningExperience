CREATE TABLE [dbo].[PRUF0131]
(
[REPORTOPTION_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTINDEX_I] [numeric] (19, 5) NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RNGE] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBYNUMBER_I] [smallint] NOT NULL,
[SORTBY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTOPTION_I] [smallint] NOT NULL,
[FROMEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMITEMNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOITEMNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PRUF0131] ADD CONSTRAINT [PKPRUF0131] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PRUF0131] ON [dbo].[PRUF0131] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PRUF0131].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[SORTBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[FROMEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[TOEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[FROMITEMNUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PRUF0131].[TOITEMNUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PRUF0131].[RESID]'
GO
GRANT SELECT ON  [dbo].[PRUF0131] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PRUF0131] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PRUF0131] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PRUF0131] TO [DYNGRP]
GO
