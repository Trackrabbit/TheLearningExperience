CREATE TABLE [dbo].[UPR10208]
(
[PRINTED] [tinyint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLNAME] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADNMBR] [int] NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRTARR_1] [numeric] (19, 5) NOT NULL,
[PAYRTARR_2] [numeric] (19, 5) NOT NULL,
[PAYRTARR_3] [numeric] (19, 5) NOT NULL,
[PAYRTARR_4] [numeric] (19, 5) NOT NULL,
[PAYRTARR_5] [numeric] (19, 5) NOT NULL,
[PAYRTARR_6] [numeric] (19, 5) NOT NULL,
[PAYRTARR_7] [numeric] (19, 5) NOT NULL,
[PAYRTARR_8] [numeric] (19, 5) NOT NULL,
[PAYRTARR_9] [numeric] (19, 5) NOT NULL,
[PAYRTARR_10] [numeric] (19, 5) NOT NULL,
[PAYRTARR_11] [numeric] (19, 5) NOT NULL,
[PAYRTARR_12] [numeric] (19, 5) NOT NULL,
[PAYRTARR_13] [numeric] (19, 5) NOT NULL,
[PAYRTARR_14] [numeric] (19, 5) NOT NULL,
[PAYRTARR_15] [numeric] (19, 5) NOT NULL,
[PAYRTARR_16] [numeric] (19, 5) NOT NULL,
[PAYRTARR_17] [numeric] (19, 5) NOT NULL,
[PAYRTARR_18] [numeric] (19, 5) NOT NULL,
[PAYRTARR_19] [numeric] (19, 5) NOT NULL,
[PAYRTARR_20] [numeric] (19, 5) NOT NULL,
[PAYRTARR_21] [numeric] (19, 5) NOT NULL,
[PAYRTARR_22] [numeric] (19, 5) NOT NULL,
[PAYRTARR_23] [numeric] (19, 5) NOT NULL,
[PAYRTARR_24] [numeric] (19, 5) NOT NULL,
[PAYRTARR_25] [numeric] (19, 5) NOT NULL,
[PAYHRSAR_1] [int] NOT NULL,
[PAYHRSAR_2] [int] NOT NULL,
[PAYHRSAR_3] [int] NOT NULL,
[PAYHRSAR_4] [int] NOT NULL,
[PAYHRSAR_5] [int] NOT NULL,
[PAYHRSAR_6] [int] NOT NULL,
[PAYHRSAR_7] [int] NOT NULL,
[PAYHRSAR_8] [int] NOT NULL,
[PAYHRSAR_9] [int] NOT NULL,
[PAYHRSAR_10] [int] NOT NULL,
[PAYHRSAR_11] [int] NOT NULL,
[PAYHRSAR_12] [int] NOT NULL,
[PAYHRSAR_13] [int] NOT NULL,
[PAYHRSAR_14] [int] NOT NULL,
[PAYHRSAR_15] [int] NOT NULL,
[PAYHRSAR_16] [int] NOT NULL,
[PAYHRSAR_17] [int] NOT NULL,
[PAYHRSAR_18] [int] NOT NULL,
[PAYHRSAR_19] [int] NOT NULL,
[PAYHRSAR_20] [int] NOT NULL,
[PAYHRSAR_21] [int] NOT NULL,
[PAYHRSAR_22] [int] NOT NULL,
[PAYHRSAR_23] [int] NOT NULL,
[PAYHRSAR_24] [int] NOT NULL,
[PAYHRSAR_25] [int] NOT NULL,
[PAYERNAR_1] [numeric] (19, 5) NOT NULL,
[PAYERNAR_2] [numeric] (19, 5) NOT NULL,
[PAYERNAR_3] [numeric] (19, 5) NOT NULL,
[PAYERNAR_4] [numeric] (19, 5) NOT NULL,
[PAYERNAR_5] [numeric] (19, 5) NOT NULL,
[PAYERNAR_6] [numeric] (19, 5) NOT NULL,
[PAYERNAR_7] [numeric] (19, 5) NOT NULL,
[PAYERNAR_8] [numeric] (19, 5) NOT NULL,
[PAYERNAR_9] [numeric] (19, 5) NOT NULL,
[PAYERNAR_10] [numeric] (19, 5) NOT NULL,
[PAYERNAR_11] [numeric] (19, 5) NOT NULL,
[PAYERNAR_12] [numeric] (19, 5) NOT NULL,
[PAYERNAR_13] [numeric] (19, 5) NOT NULL,
[PAYERNAR_14] [numeric] (19, 5) NOT NULL,
[PAYERNAR_15] [numeric] (19, 5) NOT NULL,
[PAYERNAR_16] [numeric] (19, 5) NOT NULL,
[PAYERNAR_17] [numeric] (19, 5) NOT NULL,
[PAYERNAR_18] [numeric] (19, 5) NOT NULL,
[PAYERNAR_19] [numeric] (19, 5) NOT NULL,
[PAYERNAR_20] [numeric] (19, 5) NOT NULL,
[PAYERNAR_21] [numeric] (19, 5) NOT NULL,
[PAYERNAR_22] [numeric] (19, 5) NOT NULL,
[PAYERNAR_23] [numeric] (19, 5) NOT NULL,
[PAYERNAR_24] [numeric] (19, 5) NOT NULL,
[PAYERNAR_25] [numeric] (19, 5) NOT NULL,
[TFICATWH] [numeric] (19, 5) NOT NULL,
[FCASWPR] [numeric] (19, 5) NOT NULL,
[FICAMWPR] [numeric] (19, 5) NOT NULL,
[FDWDGPRN] [numeric] (19, 5) NOT NULL,
[STWHDARR_1] [numeric] (19, 5) NOT NULL,
[STWHDARR_2] [numeric] (19, 5) NOT NULL,
[STWHDARR_3] [numeric] (19, 5) NOT NULL,
[STWHDARR_4] [numeric] (19, 5) NOT NULL,
[STWHDARR_5] [numeric] (19, 5) NOT NULL,
[STWHDARR_6] [numeric] (19, 5) NOT NULL,
[STWHDARR_7] [numeric] (19, 5) NOT NULL,
[STWHDARR_8] [numeric] (19, 5) NOT NULL,
[STWHDARR_9] [numeric] (19, 5) NOT NULL,
[STWHDARR_10] [numeric] (19, 5) NOT NULL,
[STWHDARR_11] [numeric] (19, 5) NOT NULL,
[STWHDARR_12] [numeric] (19, 5) NOT NULL,
[STWHDARR_13] [numeric] (19, 5) NOT NULL,
[STWHDARR_14] [numeric] (19, 5) NOT NULL,
[STWHDARR_15] [numeric] (19, 5) NOT NULL,
[STWHDARR_16] [numeric] (19, 5) NOT NULL,
[STWHDARR_17] [numeric] (19, 5) NOT NULL,
[STWHDARR_18] [numeric] (19, 5) NOT NULL,
[STWHDARR_19] [numeric] (19, 5) NOT NULL,
[STWHDARR_20] [numeric] (19, 5) NOT NULL,
[STWHDARR_21] [numeric] (19, 5) NOT NULL,
[STWHDARR_22] [numeric] (19, 5) NOT NULL,
[STWHDARR_23] [numeric] (19, 5) NOT NULL,
[STWHDARR_24] [numeric] (19, 5) NOT NULL,
[STWHDARR_25] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_1] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_2] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_3] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_4] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_5] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_6] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_7] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_8] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_9] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_10] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_11] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_12] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_13] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_14] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_15] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_16] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_17] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_18] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_19] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_20] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_21] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_22] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_23] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_24] [numeric] (19, 5) NOT NULL,
[LTXWHGAR_25] [numeric] (19, 5) NOT NULL,
[DEDAMARR_1] [numeric] (19, 5) NOT NULL,
[DEDAMARR_2] [numeric] (19, 5) NOT NULL,
[DEDAMARR_3] [numeric] (19, 5) NOT NULL,
[DEDAMARR_4] [numeric] (19, 5) NOT NULL,
[DEDAMARR_5] [numeric] (19, 5) NOT NULL,
[DEDAMARR_6] [numeric] (19, 5) NOT NULL,
[DEDAMARR_7] [numeric] (19, 5) NOT NULL,
[DEDAMARR_8] [numeric] (19, 5) NOT NULL,
[DEDAMARR_9] [numeric] (19, 5) NOT NULL,
[DEDAMARR_10] [numeric] (19, 5) NOT NULL,
[DEDAMARR_11] [numeric] (19, 5) NOT NULL,
[DEDAMARR_12] [numeric] (19, 5) NOT NULL,
[DEDAMARR_13] [numeric] (19, 5) NOT NULL,
[DEDAMARR_14] [numeric] (19, 5) NOT NULL,
[DEDAMARR_15] [numeric] (19, 5) NOT NULL,
[DEDAMARR_16] [numeric] (19, 5) NOT NULL,
[DEDAMARR_17] [numeric] (19, 5) NOT NULL,
[DEDAMARR_18] [numeric] (19, 5) NOT NULL,
[DEDAMARR_19] [numeric] (19, 5) NOT NULL,
[DEDAMARR_20] [numeric] (19, 5) NOT NULL,
[DEDAMARR_21] [numeric] (19, 5) NOT NULL,
[DEDAMARR_22] [numeric] (19, 5) NOT NULL,
[DEDAMARR_23] [numeric] (19, 5) NOT NULL,
[DEDAMARR_24] [numeric] (19, 5) NOT NULL,
[DEDAMARR_25] [numeric] (19, 5) NOT NULL,
[BNFAMARR_1] [numeric] (19, 5) NOT NULL,
[BNFAMARR_2] [numeric] (19, 5) NOT NULL,
[BNFAMARR_3] [numeric] (19, 5) NOT NULL,
[BNFAMARR_4] [numeric] (19, 5) NOT NULL,
[BNFAMARR_5] [numeric] (19, 5) NOT NULL,
[BNFAMARR_6] [numeric] (19, 5) NOT NULL,
[BNFAMARR_7] [numeric] (19, 5) NOT NULL,
[BNFAMARR_8] [numeric] (19, 5) NOT NULL,
[BNFAMARR_9] [numeric] (19, 5) NOT NULL,
[BNFAMARR_10] [numeric] (19, 5) NOT NULL,
[BNFAMARR_11] [numeric] (19, 5) NOT NULL,
[BNFAMARR_12] [numeric] (19, 5) NOT NULL,
[BNFAMARR_13] [numeric] (19, 5) NOT NULL,
[BNFAMARR_14] [numeric] (19, 5) NOT NULL,
[BNFAMARR_15] [numeric] (19, 5) NOT NULL,
[BNFAMARR_16] [numeric] (19, 5) NOT NULL,
[BNFAMARR_17] [numeric] (19, 5) NOT NULL,
[BNFAMARR_18] [numeric] (19, 5) NOT NULL,
[BNFAMARR_19] [numeric] (19, 5) NOT NULL,
[BNFAMARR_20] [numeric] (19, 5) NOT NULL,
[BNFAMARR_21] [numeric] (19, 5) NOT NULL,
[BNFAMARR_22] [numeric] (19, 5) NOT NULL,
[BNFAMARR_23] [numeric] (19, 5) NOT NULL,
[BNFAMARR_24] [numeric] (19, 5) NOT NULL,
[BNFAMARR_25] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_1] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_2] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_3] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_4] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_5] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_6] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_7] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_8] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_9] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_10] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_11] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_12] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_13] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_14] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_15] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_16] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_17] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_18] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_19] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_20] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_21] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_22] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_23] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_24] [numeric] (19, 5) NOT NULL,
[TIMEAVAILARRAY_25] [numeric] (19, 5) NOT NULL,
[TTLHOURS] [int] NOT NULL,
[TTLERNGS] [numeric] (19, 5) NOT NULL,
[TOTLTAXS] [numeric] (19, 5) NOT NULL,
[TTLDDTNS] [numeric] (19, 5) NOT NULL,
[TTLBNFTS] [numeric] (19, 5) NOT NULL,
[NTWPYRN] [numeric] (19, 5) NOT NULL,
[GRWGPRN] [numeric] (19, 5) NOT NULL,
[REGHOURS] [int] NOT NULL,
[REGERNGS] [numeric] (19, 5) NOT NULL,
[OVRTMHRS] [int] NOT NULL,
[OVTMEARN] [numeric] (19, 5) NOT NULL,
[DBLTMHRS] [int] NOT NULL,
[DBLTMERN] [numeric] (19, 5) NOT NULL,
[EICERNGS] [numeric] (19, 5) NOT NULL,
[COMMERNG] [numeric] (19, 5) NOT NULL,
[BSNEXERN] [numeric] (19, 5) NOT NULL,
[PNSNERNG] [numeric] (19, 5) NOT NULL,
[HOLDYHRS] [int] NOT NULL,
[HLDYEARN] [numeric] (19, 5) NOT NULL,
[VACTNHRS] [int] NOT NULL,
[VCTNERNG] [numeric] (19, 5) NOT NULL,
[SKTIMHRS] [int] NOT NULL,
[SKTMERNG] [numeric] (19, 5) NOT NULL,
[PCWKUNIT] [int] NOT NULL,
[PCWKERNG] [numeric] (19, 5) NOT NULL,
[SPCLERNG] [numeric] (19, 5) NOT NULL,
[CHGTPERN] [numeric] (19, 5) NOT NULL,
[REPTPERN] [numeric] (19, 5) NOT NULL,
[MNWGBLER] [numeric] (19, 5) NOT NULL,
[VACAVLBL] [int] NOT NULL,
[SIKTIMAV] [int] NOT NULL,
[STTPYPRD] [datetime] NOT NULL,
[ENPAYPRD] [datetime] NOT NULL,
[Uncollected_FICAMed_TaxP] [numeric] (19, 5) NOT NULL,
[Uncollected_FICASS_TaxP] [numeric] (19, 5) NOT NULL,
[RSNCHKVD] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[AMTINWDS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10208] ADD CONSTRAINT [CK__UPR10208__CHEKDA__2ACB39A2] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10208] ADD CONSTRAINT [CK__UPR10208__ENPAYP__2BBF5DDB] CHECK ((datepart(hour,[ENPAYPRD])=(0) AND datepart(minute,[ENPAYPRD])=(0) AND datepart(second,[ENPAYPRD])=(0) AND datepart(millisecond,[ENPAYPRD])=(0)))
GO
ALTER TABLE [dbo].[UPR10208] ADD CONSTRAINT [CK__UPR10208__STTPYP__2CB38214] CHECK ((datepart(hour,[STTPYPRD])=(0) AND datepart(minute,[STTPYPRD])=(0) AND datepart(second,[STTPYPRD])=(0) AND datepart(millisecond,[STTPYPRD])=(0)))
GO
ALTER TABLE [dbo].[UPR10208] ADD CONSTRAINT [PKUPR10208] PRIMARY KEY NONCLUSTERED  ([USERID], [PRINTED], [EMPLOYID], [PYADNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10208] ON [dbo].[UPR10208] ([USERID], [PRINTED], [CHEKNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10208] ON [dbo].[UPR10208] ([USERID], [PRINTED], [DEPRTMNT], [LASTNAME], [FRSTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR10208] ON [dbo].[UPR10208] ([USERID], [PRINTED], [EMPLCLAS], [LASTNAME], [FRSTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10208] ON [dbo].[UPR10208] ([USERID], [PRINTED], [EMPLNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR10208] ON [dbo].[UPR10208] ([USERID], [PRINTED], [LASTNAME], [FRSTNAME], [MIDLNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[EMPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10208].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYRTARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PAYHRSAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PAYERNAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TFICATWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[FCASWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[FICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[FDWDGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[STWHDARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[LTXWHGAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DEDAMARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BNFAMARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TIMEAVAILARRAY_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[TTLHOURS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TTLERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TOTLTAXS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TTLDDTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[TTLBNFTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[NTWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[GRWGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[REGHOURS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[REGERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[OVRTMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[OVTMEARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[DBLTMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[DBLTMERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[EICERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[COMMERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[BSNEXERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PNSNERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[HOLDYHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[HLDYEARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[VACTNHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[VCTNERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[SKTIMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[SKTMERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[PCWKUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[PCWKERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[SPCLERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[CHGTPERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[REPTPERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[MNWGBLER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10208].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10208].[STTPYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10208].[ENPAYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[Uncollected_FICAMed_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10208].[Uncollected_FICASS_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10208].[RSNCHKVD]'
GO
GRANT SELECT ON  [dbo].[UPR10208] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10208] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10208] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10208] TO [DYNGRP]
GO
