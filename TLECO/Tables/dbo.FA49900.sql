CREATE TABLE [dbo].[FA49900]
(
[CMPANYID] [smallint] NOT NULL,
[ORGSEGMENT] [smallint] NOT NULL,
[ACCTSEGMENT] [smallint] NOT NULL,
[PROJSEGMENT] [smallint] NOT NULL,
[CORPBOOKINDX] [int] NOT NULL,
[USERDATAAUTOFMT] [tinyint] NOT NULL,
[REQACCOUNT] [tinyint] NOT NULL,
[USRFLD1PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD1FMT] [smallint] NOT NULL,
[USRFLD2PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD2FMT] [smallint] NOT NULL,
[USRFLD3PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD3FMT] [smallint] NOT NULL,
[USRFLD4PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD4FMT] [smallint] NOT NULL,
[USRFLD5PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD5FMT] [smallint] NOT NULL,
[USRFLD6PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD6FMT] [smallint] NOT NULL,
[USRFLD7PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD7FMT] [smallint] NOT NULL,
[USRFLD8PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD8FMT] [smallint] NOT NULL,
[USRFLD9PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD9FMT] [smallint] NOT NULL,
[USRFLD10PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD10FMT] [smallint] NOT NULL,
[USRFLD11PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD11FMT] [smallint] NOT NULL,
[USRFLD12PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD12FMT] [smallint] NOT NULL,
[USRFLD13PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD13FMT] [smallint] NOT NULL,
[USRFLD14PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD14FMT] [smallint] NOT NULL,
[USRFLD15PROMPT] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD15FMT] [smallint] NOT NULL,
[ListValidValues_1] [tinyint] NOT NULL,
[ListValidValues_2] [tinyint] NOT NULL,
[ListValidValues_3] [tinyint] NOT NULL,
[ListValidValues_4] [tinyint] NOT NULL,
[ListValidValues_5] [tinyint] NOT NULL,
[ListValidValues_6] [tinyint] NOT NULL,
[ListValidValues_7] [tinyint] NOT NULL,
[ListValidValues_8] [tinyint] NOT NULL,
[ListValidValues_9] [tinyint] NOT NULL,
[ListValidValues_10] [tinyint] NOT NULL,
[ValidDate_1] [tinyint] NOT NULL,
[ValidDate_2] [tinyint] NOT NULL,
[ValidDate_3] [tinyint] NOT NULL,
[ValidDate_4] [tinyint] NOT NULL,
[Post_Table_Delete_Option] [tinyint] NOT NULL,
[PO_System_Used] [smallint] NOT NULL,
[AP_Post_Option] [tinyint] NOT NULL,
[FA_Post_From_POP] [tinyint] NOT NULL,
[POP_Post_Option] [smallint] NOT NULL,
[Include_Matching_Invoice] [tinyint] NOT NULL,
[FA_Country] [smallint] NOT NULL,
[Auto_Add_Book_Info] [tinyint] NOT NULL,
[Deflt_Asset_Lbl_from_ID] [tinyint] NOT NULL,
[Validate_Custodian] [tinyint] NOT NULL,
[DEPREXPACCTINDX] [int] NOT NULL,
[DEPRRESVACCTINDX] [int] NOT NULL,
[PRIORYRDEPRACCTINDX] [int] NOT NULL,
[ASSETCOSTACCTINDX] [int] NOT NULL,
[PROCEEDSACCTINDX] [int] NOT NULL,
[RECGAINLOSSACCTINDX] [int] NOT NULL,
[NONRECGAINLOSSACCTINDX] [int] NOT NULL,
[CLEARINGACCTINDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Allow_Reporting_Ledge] [tinyint] NOT NULL,
[FA_Reset_History_In_Deta] [tinyint] NOT NULL,
[POSTINDETAIL] [tinyint] NOT NULL,
[NXTASSETIDFLG] [tinyint] NOT NULL,
[NXTASSETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA49900] ADD CONSTRAINT [CK__FA49900__LASTMNT__758348BB] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA49900] ADD CONSTRAINT [CK__FA49900__LASTMNT__748F2482] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA49900] ADD CONSTRAINT [PKFA49900] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA49900] ON [dbo].[FA49900] ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ORGSEGMENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ACCTSEGMENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[PROJSEGMENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[CORPBOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USERDATAAUTOFMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[REQACCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD1PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD1FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD2PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD2FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD3PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD3FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD4PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD4FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD5PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD5FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD6PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD6FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD7PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD7FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD8PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD8FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD9PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD9FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD10PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD10FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD11PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD11FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD12PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD12FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD13PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD13FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD14PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD14FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[USRFLD15PROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[USRFIELD15FMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ListValidValues_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ValidDate_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ValidDate_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ValidDate_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ValidDate_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[Post_Table_Delete_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[PO_System_Used]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[AP_Post_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[FA_Post_From_POP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[POP_Post_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[Include_Matching_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[FA_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[Auto_Add_Book_Info]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[Deflt_Asset_Lbl_from_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[Validate_Custodian]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[DEPREXPACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[DEPRRESVACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[PRIORYRDEPRACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[ASSETCOSTACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[PROCEEDSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[RECGAINLOSSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[NONRECGAINLOSSACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[CLEARINGACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA49900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA49900].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA49900].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[LASTMNTDUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[FA_Allow_Reporting_Ledge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[FA_Reset_History_In_Deta]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[POSTINDETAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA49900].[NXTASSETIDFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA49900].[NXTASSETID]'
GO
GRANT SELECT ON  [dbo].[FA49900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA49900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA49900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA49900] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[FA49900] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[FA49900] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[FA49900] TO [rpt_executive]
GO
