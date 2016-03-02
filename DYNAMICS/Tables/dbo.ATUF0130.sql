CREATE TABLE [dbo].[ATUF0130]
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
[REPORTFORMAT] [smallint] NOT NULL,
[RNGE] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBYNUMBER_I] [smallint] NOT NULL,
[SORTBY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTOPTION_I] [smallint] NOT NULL,
[FROMAPPLYDATE_I] [datetime] NOT NULL,
[TOAPPLYDATE_I] [datetime] NOT NULL,
[APPLYDATE_I] [datetime] NOT NULL,
[FROMBATCH_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBATCH_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMBATCHNUMBER_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBATCHNUMBER_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMCARDNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOCARDNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLORCODE_I] [smallint] NOT NULL,
[FROMDATE_I] [datetime] NOT NULL,
[TODATE_I] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[FROMDEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TODEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FDISLINENUMBER_I] [smallint] NOT NULL,
[TODISCIPLINENUMBER_I] [smallint] NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[FROMDIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TODIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMENTRYNUMBER_I] [smallint] NOT NULL,
[TOENTRYNUMBER_I] [smallint] NOT NULL,
[FROMFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETHNICORIGIN_I] [smallint] NOT NULL,
[FROMISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMPOSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOPOSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMTIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__APPLYD__0487F72E] CHECK ((datepart(hour,[APPLYDATE_I])=(0) AND datepart(minute,[APPLYDATE_I])=(0) AND datepart(second,[APPLYDATE_I])=(0) AND datepart(millisecond,[APPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__DATE1__057C1B67] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__FROMAP__06703FA0] CHECK ((datepart(hour,[FROMAPPLYDATE_I])=(0) AND datepart(minute,[FROMAPPLYDATE_I])=(0) AND datepart(second,[FROMAPPLYDATE_I])=(0) AND datepart(millisecond,[FROMAPPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__FROMDA__076463D9] CHECK ((datepart(hour,[FROMDATE_I])=(0) AND datepart(minute,[FROMDATE_I])=(0) AND datepart(second,[FROMDATE_I])=(0) AND datepart(millisecond,[FROMDATE_I])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__TOAPPL__08588812] CHECK ((datepart(hour,[TOAPPLYDATE_I])=(0) AND datepart(minute,[TOAPPLYDATE_I])=(0) AND datepart(second,[TOAPPLYDATE_I])=(0) AND datepart(millisecond,[TOAPPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [CK__ATUF0130__TODATE__094CAC4B] CHECK ((datepart(hour,[TODATE_I])=(0) AND datepart(minute,[TODATE_I])=(0) AND datepart(second,[TODATE_I])=(0) AND datepart(millisecond,[TODATE_I])=(0)))
GO
ALTER TABLE [dbo].[ATUF0130] ADD CONSTRAINT [PKATUF0130] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ATUF0130] ON [dbo].[ATUF0130] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ATUF0130].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[REPORTFORMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[SORTBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[FROMAPPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[TOAPPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[APPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMBATCH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOBATCH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMBATCHNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOBATCHNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMCARDNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOCARDNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[COLORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[FROMDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[TODATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ATUF0130].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMDEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TODEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[FDISLINENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[TODISCIPLINENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMDIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TODIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[FROMENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[TOENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[ETHNICORIGIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[SSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[LLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMPOSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOPOSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[FROMTIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TOTIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ATUF0130].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[INCINEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ATUF0130].[RESID]'
GO
GRANT SELECT ON  [dbo].[ATUF0130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATUF0130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATUF0130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATUF0130] TO [DYNGRP]
GO
