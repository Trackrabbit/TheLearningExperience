CREATE TABLE [dbo].[APUF0132]
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
[SORTOPTION_I] [smallint] NOT NULL,
[SORTBYNUMBER_I] [smallint] NOT NULL,
[FROMAPPLYDATE_I] [datetime] NOT NULL,
[TOAPPLYDATE_I] [datetime] NOT NULL,
[FROMISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOISSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQUISITIONNUMBER_I] [int] NOT NULL,
[COLORSTRING_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUS0_I] [smallint] NOT NULL,
[FROMINTERVIEWNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOINTERVIEWNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFSOURCEDDL_I] [smallint] NOT NULL,
[TEST_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APUF0132] ADD CONSTRAINT [CK__APUF0132__FROMAP__00B7664A] CHECK ((datepart(hour,[FROMAPPLYDATE_I])=(0) AND datepart(minute,[FROMAPPLYDATE_I])=(0) AND datepart(second,[FROMAPPLYDATE_I])=(0) AND datepart(millisecond,[FROMAPPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[APUF0132] ADD CONSTRAINT [CK__APUF0132__TOAPPL__01AB8A83] CHECK ((datepart(hour,[TOAPPLYDATE_I])=(0) AND datepart(minute,[TOAPPLYDATE_I])=(0) AND datepart(second,[TOAPPLYDATE_I])=(0) AND datepart(millisecond,[TOAPPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[APUF0132] ADD CONSTRAINT [PKAPUF0132] PRIMARY KEY CLUSTERED  ([REPORTOPTION_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2APUF0132] ON [dbo].[APUF0132] ([REPORTINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[REPORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[APUF0132].[REPORTINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[APUF0132].[FROMAPPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[APUF0132].[TOAPPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[FROMISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[TOISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[FROMFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[FROMLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[TOFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[TOLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[REQUISITIONNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[COLORSTRING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[STATUS0_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[FROMINTERVIEWNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[TOINTERVIEWNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[REFSOURCEDDL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[APUF0132].[TEST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[APUF0132].[RESID]'
GO
GRANT SELECT ON  [dbo].[APUF0132] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[APUF0132] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[APUF0132] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[APUF0132] TO [DYNGRP]
GO
