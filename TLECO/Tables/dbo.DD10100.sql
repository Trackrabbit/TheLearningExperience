CREATE TABLE [dbo].[DD10100]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLNAME] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRINTED] [tinyint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADNMBR] [int] NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NTWPYRN] [numeric] (19, 5) NOT NULL,
[GRWGPRN] [numeric] (19, 5) NOT NULL,
[STTPYPRD] [datetime] NOT NULL,
[ENPAYPRD] [datetime] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DDVOIDED] [tinyint] NOT NULL,
[DDMASKDLR] [tinyint] NOT NULL,
[DDSUPCHK] [smallint] NOT NULL,
[DDNBRACCTS] [smallint] NOT NULL,
[DDATRXCODE_1] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_2] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_5] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_6] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_7] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_8] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_9] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_10] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_11] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRXCODE_12] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_2] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_3] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_4] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_5] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_6] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_7] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_8] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_9] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_10] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_11] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDATRANSIT_12] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_1] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_2] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_3] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_4] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_5] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_6] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_7] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_8] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_9] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_10] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_11] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAACCOUNT_12] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAAMOUNT_1] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_2] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_3] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_4] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_5] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_6] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_7] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_8] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_9] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_10] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_11] [numeric] (19, 5) NOT NULL,
[DDAAMOUNT_12] [numeric] (19, 5) NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD10100] ADD CONSTRAINT [CK__DD10100__CHEKDAT__0880433F] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[DD10100] ADD CONSTRAINT [CK__DD10100__ENPAYPR__09746778] CHECK ((datepart(hour,[ENPAYPRD])=(0) AND datepart(minute,[ENPAYPRD])=(0) AND datepart(second,[ENPAYPRD])=(0) AND datepart(millisecond,[ENPAYPRD])=(0)))
GO
ALTER TABLE [dbo].[DD10100] ADD CONSTRAINT [CK__DD10100__STTPYPR__0A688BB1] CHECK ((datepart(hour,[STTPYPRD])=(0) AND datepart(minute,[STTPYPRD])=(0) AND datepart(second,[STTPYPRD])=(0) AND datepart(millisecond,[STTPYPRD])=(0)))
GO
ALTER TABLE [dbo].[DD10100] ADD CONSTRAINT [PKDD10100] PRIMARY KEY NONCLUSTERED  ([USERID], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[EMPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10100].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[NTWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[GRWGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10100].[STTPYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD10100].[ENPAYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[DDVOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[DDMASKDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[DDSUPCHK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10100].[DDNBRACCTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRXCODE_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDATRANSIT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[DDAACCOUNT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10100].[DDAAMOUNT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10100].[USERID]'
GO
GRANT SELECT ON  [dbo].[DD10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD10100] TO [DYNGRP]
GO
