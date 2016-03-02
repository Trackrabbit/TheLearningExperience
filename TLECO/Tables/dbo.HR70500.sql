CREATE TABLE [dbo].[HR70500]
(
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RNGE] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBYNUMBER_I] [smallint] NOT NULL,
[SORTOPTION_I] [smallint] NOT NULL,
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
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOEMPLOYEEID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMDATE_I] [datetime] NOT NULL,
[TODATE_I] [datetime] NOT NULL,
[HRSTATUS] [smallint] NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[DATEENDING] [datetime] NOT NULL,
[SKILLSET_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQUISITIONNUMBER_I] [int] NOT NULL,
[FROMTESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICLASSID_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEID_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR70500] ADD CONSTRAINT [CK__HR70500__DATEEND__7AD27151] CHECK ((datepart(hour,[DATEENDING])=(0) AND datepart(minute,[DATEENDING])=(0) AND datepart(second,[DATEENDING])=(0) AND datepart(millisecond,[DATEENDING])=(0)))
GO
ALTER TABLE [dbo].[HR70500] ADD CONSTRAINT [CK__HR70500__FROMDAT__7BC6958A] CHECK ((datepart(hour,[FROMDATE_I])=(0) AND datepart(minute,[FROMDATE_I])=(0) AND datepart(second,[FROMDATE_I])=(0) AND datepart(millisecond,[FROMDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR70500] ADD CONSTRAINT [CK__HR70500__TODATE___7CBAB9C3] CHECK ((datepart(hour,[TODATE_I])=(0) AND datepart(minute,[TODATE_I])=(0) AND datepart(second,[TODATE_I])=(0) AND datepart(millisecond,[TODATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR70500] ADD CONSTRAINT [PKHR70500] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR70500].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[RNGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[SORTBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[SORTBYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[SORTOPTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FROMISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[TOISSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FROMFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FROMLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[TOFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[TOLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FROMEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[TOEMPLOYEEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR70500].[FROMDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR70500].[TODATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[INCINEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR70500].[DATEENDING]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[SKILLSET_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR70500].[REQUISITIONNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[FROMTESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[TOTESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[ICLASSID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR70500].[COURSEID_I]'
GO
GRANT SELECT ON  [dbo].[HR70500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR70500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR70500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR70500] TO [DYNGRP]
GO
