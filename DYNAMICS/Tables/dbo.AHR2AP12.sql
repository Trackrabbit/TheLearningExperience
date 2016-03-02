CREATE TABLE [dbo].[AHR2AP12]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[SSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOMEPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXT_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[APPLYDATE_I] [datetime] NOT NULL,
[REQUISITIONNUMBER_I] [int] NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUS0_I] [smallint] NOT NULL,
[REJECTREASON_I] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RELOCATION_I] [smallint] NOT NULL,
[REPLYLETTERSENT_I] [tinyint] NOT NULL,
[COLORCODE_I] [smallint] NOT NULL,
[COLORSTRING_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFSOURCEDDL_I] [smallint] NOT NULL,
[REFERENCESOURCE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EEOGENDER_I] [smallint] NOT NULL,
[EEOETHNICORIGIN_I] [smallint] NOT NULL,
[EEOAGE_I] [smallint] NOT NULL,
[HANDICAPPED] [tinyint] NOT NULL,
[VETERAN] [tinyint] NOT NULL,
[DISABLEDVETERAN] [tinyint] NOT NULL,
[VIETNAMVETERAN] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[OTHERVET] [tinyint] NOT NULL,
[AFSMVET] [tinyint] NOT NULL,
[RECSEPVET] [tinyint] NOT NULL,
[INET1] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2AP12] ADD CONSTRAINT [CK__AHR2AP12__APPLYD__69D400F2] CHECK ((datepart(hour,[APPLYDATE_I])=(0) AND datepart(minute,[APPLYDATE_I])=(0) AND datepart(second,[APPLYDATE_I])=(0) AND datepart(millisecond,[APPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP12] ADD CONSTRAINT [CK__AHR2AP12__CHANGE__6AC8252B] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP12] ADD CONSTRAINT [PKAHR2AP12] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AHR2AP12] ON [dbo].[AHR2AP12] ([APPLYDATE_I], [LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7AHR2AP12] ON [dbo].[AHR2AP12] ([COLORSTRING_I], [LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5AHR2AP12] ON [dbo].[AHR2AP12] ([COMPANYCODE_I], [DIVISIONCODE_I], [DEPARTMENTCODE_I], [POSITIONCODE_I], [LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHR2AP12] ON [dbo].[AHR2AP12] ([LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8AHR2AP12] ON [dbo].[AHR2AP12] ([REFSOURCEDDL_I], [REFERENCESOURCE_I], [LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2AP12] ON [dbo].[AHR2AP12] ([SSN_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6AHR2AP12] ON [dbo].[AHR2AP12] ([STATUS0_I], [LLASTNAME_I], [FFIRSTNAME_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP12].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[SSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[LLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[FFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[ZIPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[HOMEPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[WORKPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[EXT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP12].[APPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[REQUISITIONNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[STATUS0_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[REJECTREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[RELOCATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[REPLYLETTERSENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[COLORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[COLORSTRING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[REFSOURCEDDL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[REFERENCESOURCE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[EEOGENDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[EEOETHNICORIGIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[EEOAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[HANDICAPPED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[VETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[DISABLEDVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[VIETNAMVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP12].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP12].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[OTHERVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[AFSMVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP12].[RECSEPVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP12].[INET1]'
GO
GRANT SELECT ON  [dbo].[AHR2AP12] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2AP12] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2AP12] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2AP12] TO [DYNGRP]
GO
