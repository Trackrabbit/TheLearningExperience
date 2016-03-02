CREATE TABLE [dbo].[ME27646]
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
[ME_Threshhold] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[AMTINWDS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27646] ADD CONSTRAINT [CK__ME27646__CHEKDAT__3FBEC8B6] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[ME27646] ADD CONSTRAINT [CK__ME27646__ENPAYPR__41A71128] CHECK ((datepart(hour,[ENPAYPRD])=(0) AND datepart(minute,[ENPAYPRD])=(0) AND datepart(second,[ENPAYPRD])=(0) AND datepart(millisecond,[ENPAYPRD])=(0)))
GO
ALTER TABLE [dbo].[ME27646] ADD CONSTRAINT [CK__ME27646__STTPYPR__40B2ECEF] CHECK ((datepart(hour,[STTPYPRD])=(0) AND datepart(minute,[STTPYPRD])=(0) AND datepart(second,[STTPYPRD])=(0) AND datepart(millisecond,[STTPYPRD])=(0)))
GO
ALTER TABLE [dbo].[ME27646] ADD CONSTRAINT [PKME27646] PRIMARY KEY NONCLUSTERED  ([USERID], [PRINTED], [CHEKNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME27646] ON [dbo].[ME27646] ([USERID], [ME_Threshhold], [CHEKNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ME27646] ON [dbo].[ME27646] ([USERID], [PRINTED], [EMPLOYID], [PYADNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ME27646] ON [dbo].[ME27646] ([USERID], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[EMPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27646].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYRTARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PAYHRSAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PAYERNAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[TFICATWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[FCASWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[FICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[FDWDGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[STWHDARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[LTXWHGAR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DEDAMARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BNFAMARR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[TTLHOURS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[TTLERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[TOTLTAXS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[TTLDDTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[TTLBNFTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[NTWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[GRWGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[REGHOURS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[REGERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[OVRTMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[OVTMEARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[DBLTMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[DBLTMERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[EICERNGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[COMMERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[BSNEXERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PNSNERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[HOLDYHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[HLDYEARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[VACTNHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[VCTNERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[SKTIMHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[SKTMERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[PCWKUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[PCWKERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[SPCLERNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[CHGTPERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[REPTPERN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[MNWGBLER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27646].[STTPYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27646].[ENPAYPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[Uncollected_FICAMed_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27646].[Uncollected_FICASS_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27646].[RSNCHKVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[ME_Threshhold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27646].[SORTBY]'
GO
GRANT SELECT ON  [dbo].[ME27646] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27646] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27646] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27646] TO [DYNGRP]
GO
