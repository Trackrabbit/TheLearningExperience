CREATE TABLE [dbo].[BNUF0131]
(
[REPORTOPTION_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTINDEX_I] [numeric] (19, 5) NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[STARTBENEFIT_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STARTEFFECTIVEDATE_I] [datetime] NOT NULL,
[STTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STARTCOPAYCODE_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBENEFIT_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEFFECTIVEDATE_I] [datetime] NOT NULL,
[ENDEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCOPAYCODE_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[FROMFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBYNUMBER_I] [smallint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HRSTATUS] [smallint] NOT NULL,
[STARTINDEX_I] [smallint] NOT NULL,
[SORTOPTION_I] [smallint] NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BNUF0131] ADD CONSTRAINT [CK__BNUF0131__ENDEFF__1C5F80BF] CHECK ((datepart(hour,[ENDEFFECTIVEDATE_I])=(0) AND datepart(minute,[ENDEFFECTIVEDATE_I])=(0) AND datepart(second,[ENDEFFECTIVEDATE_I])=(0) AND datepart(millisecond,[ENDEFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BNUF0131] ADD CONSTRAINT [CK__BNUF0131__STARTE__1D53A4F8] CHECK ((datepart(hour,[STARTEFFECTIVEDATE_I])=(0) AND datepart(minute,[STARTEFFECTIVEDATE_I])=(0) AND datepart(second,[STARTEFFECTIVEDATE_I])=(0) AND datepart(millisecond,[STARTEFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BNUF0131] ADD CONSTRAINT [PKBNUF0131] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BNUF0131] ON [dbo].[BNUF0131] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BNUF0131].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[STARTBENEFIT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BNUF0131].[STARTEFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[STTEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[STARTCOPAYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[ENDBENEFIT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BNUF0131].[ENDEFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[ENDEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[ENDCOPAYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[FROMFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[TOFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[FROMLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[TOLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[FROMISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[TOISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BNUF0131].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[STARTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[INCINEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BNUF0131].[RESID]'
GO
GRANT SELECT ON  [dbo].[BNUF0131] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BNUF0131] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BNUF0131] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BNUF0131] TO [DYNGRP]
GO
