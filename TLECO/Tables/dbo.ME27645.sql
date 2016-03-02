CREATE TABLE [dbo].[ME27645]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[CHEKTOTL] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCHKNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[REPRNTED] [smallint] NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[PGRAMSBJ] [smallint] NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[LDOCRMTC] [smallint] NOT NULL,
[SDORMBY] [smallint] NOT NULL,
[KEYFIELD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMWDSNBR] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMWRKMSG] [binary] (4) NOT NULL,
[PMWRKMS2] [binary] (4) NOT NULL,
[PMDSTMSG] [binary] (4) NOT NULL,
[CHKCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGB255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEPRMTNC] [tinyint] NOT NULL,
[STBOVRFL] [tinyint] NOT NULL,
[CTYSTZIP] [char] (47) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotDocAmt] [numeric] (19, 5) NOT NULL,
[TotAmtPaid] [numeric] (19, 5) NOT NULL,
[TotCrdAmt] [numeric] (19, 5) NOT NULL,
[TotalPaidTot] [numeric] (19, 5) NOT NULL,
[TotNegTot] [numeric] (19, 5) NOT NULL,
[TotCrdDocAmt] [numeric] (19, 5) NOT NULL,
[TotTotDocAmt] [numeric] (19, 5) NOT NULL,
[TotDiscTknAmt] [numeric] (19, 5) NOT NULL,
[TotWOAmt] [numeric] (19, 5) NOT NULL,
[TotPPSAmtDed] [numeric] (19, 5) NOT NULL,
[TotGSTDiscAmt] [numeric] (19, 5) NOT NULL,
[TotDiscTknTot] [numeric] (19, 5) NOT NULL,
[TotWOTot] [numeric] (19, 5) NOT NULL,
[Outstanding_Amount] [numeric] (19, 5) NOT NULL,
[Net_Paid_Amount] [numeric] (19, 5) NOT NULL,
[Electronic] [tinyint] NOT NULL,
[ME_Threshhold] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[AMTINWDS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27645] ADD CONSTRAINT [CK__ME27645__DOCDATE__1A8D4407] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[ME27645] ADD CONSTRAINT [CK__ME27645__MODIFDT__1B816840] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[ME27645] ADD CONSTRAINT [CK__ME27645__POSTEDD__1C758C79] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[ME27645] ADD CONSTRAINT [CK__ME27645__PSTGDAT__1D69B0B2] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[ME27645] ADD CONSTRAINT [PKME27645] PRIMARY KEY CLUSTERED  ([BACHNUMB], [BCHSOURC], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5ME27645] ON [dbo].[ME27645] ([BACHNUMB], [BCHSOURC], [CHEKBKID], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME27645] ON [dbo].[ME27645] ([BACHNUMB], [BCHSOURC], [ME_Threshhold], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ME27645] ON [dbo].[ME27645] ([BACHNUMB], [BCHSOURC], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ME27645] ON [dbo].[ME27645] ([BACHNUMB], [BCHSOURC], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27645].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[CHEKTOTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[REPRNTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PGRAMSBJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[LDOCRMTC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[SDORMBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[KEYFIELD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[AMWDSNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27645].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27645].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PMWRKMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PMWRKMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[PMDSTMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[CHKCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27645].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[SEPRMTNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[STBOVRFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27645].[CTYSTZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotAmtPaid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotCrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotalPaidTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotNegTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotCrdDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotTotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotDiscTknAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotWOAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotPPSAmtDed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotGSTDiscAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotDiscTknTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[TotWOTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[Outstanding_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27645].[Net_Paid_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[Electronic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[ME_Threshhold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27645].[SORTBY]'
GO
GRANT SELECT ON  [dbo].[ME27645] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27645] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27645] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27645] TO [DYNGRP]
GO
