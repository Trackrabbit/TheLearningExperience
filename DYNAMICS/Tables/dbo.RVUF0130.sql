CREATE TABLE [dbo].[RVUF0130]
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
[FROMDATE_I] [datetime] NOT NULL,
[TODATE_I] [datetime] NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[FREVSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOREVIEWSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPERVISORCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RVUF0130] ADD CONSTRAINT [CK__RVUF0130__FROMDA__2F3D4B09] CHECK ((datepart(hour,[FROMDATE_I])=(0) AND datepart(minute,[FROMDATE_I])=(0) AND datepart(second,[FROMDATE_I])=(0) AND datepart(millisecond,[FROMDATE_I])=(0)))
GO
ALTER TABLE [dbo].[RVUF0130] ADD CONSTRAINT [CK__RVUF0130__TODATE__30316F42] CHECK ((datepart(hour,[TODATE_I])=(0) AND datepart(minute,[TODATE_I])=(0) AND datepart(second,[TODATE_I])=(0) AND datepart(millisecond,[TODATE_I])=(0)))
GO
ALTER TABLE [dbo].[RVUF0130] ADD CONSTRAINT [PKRVUF0130] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RVUF0130] ON [dbo].[RVUF0130] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RVUF0130].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[SORTBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RVUF0130].[FROMDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RVUF0130].[TODATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FROMEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[TOEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FROMFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[TOFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FROMISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[TOISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FROMLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[TOLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[FREVSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[TOREVIEWSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RVUF0130].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[INCINEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RVUF0130].[RESID]'
GO
GRANT SELECT ON  [dbo].[RVUF0130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RVUF0130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RVUF0130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RVUF0130] TO [DYNGRP]
GO
