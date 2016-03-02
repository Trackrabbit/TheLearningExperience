CREATE TABLE [dbo].[RQUF0315]
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
[SORTOPTION_I] [smallint] NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREQNUMBER_I] [int] NOT NULL,
[TOREQNUM_I] [int] NOT NULL,
[REQSTATUS_I] [smallint] NOT NULL,
[REQUISITIONNUMBER_I] [int] NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RQUF0315] ADD CONSTRAINT [PKRQUF0315] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RQUF0315] ON [dbo].[RQUF0315] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RQUF0315].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RQUF0315].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[FREQNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[TOREQNUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[REQSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[REQUISITIONNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RQUF0315].[RESID]'
GO
GRANT SELECT ON  [dbo].[RQUF0315] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RQUF0315] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RQUF0315] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RQUF0315] TO [DYNGRP]
GO
