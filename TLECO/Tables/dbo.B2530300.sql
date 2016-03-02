CREATE TABLE [dbo].[B2530300]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[AMTINWDS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2530300] ADD CONSTRAINT [CK__B2530300__DOCDAT__50DFFE6E] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530300] ADD CONSTRAINT [CK__B2530300__MODIFD__51D422A7] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B2530300] ADD CONSTRAINT [CK__B2530300__POSTED__52C846E0] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[B2530300] ADD CONSTRAINT [CK__B2530300__PSTGDA__53BC6B19] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530300] ADD CONSTRAINT [PKB2530300] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B2530300] ON [dbo].[B2530300] ([BCHSOURC], [BACHNUMB], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B2530300] ON [dbo].[B2530300] ([BCHSOURC], [BACHNUMB], [STATE], [CITY], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2530300] ON [dbo].[B2530300] ([BCHSOURC], [BACHNUMB], [VENDNAME], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B2530300] ON [dbo].[B2530300] ([BCHSOURC], [BACHNUMB], [ZIPCODE], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2530300] ON [dbo].[B2530300] ([BCHSOURC], [DOCNUMBR], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2530300] ON [dbo].[B2530300] ([BCHSOURC], [PMNTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B2530300] ON [dbo].[B2530300] ([VCHRNMBR], [PMNTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530300].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[CHEKTOTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[REPRNTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PGRAMSBJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[LDOCRMTC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[SDORMBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[KEYFIELD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[AMWDSNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530300].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530300].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PMWRKMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PMWRKMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[PMDSTMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[CHKCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530300].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[SEPRMTNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[STBOVRFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530300].[CTYSTZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotAmtPaid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotCrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotalPaidTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotNegTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotCrdDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotTotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotDiscTknAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotWOAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotPPSAmtDed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotGSTDiscAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotDiscTknTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[TotWOTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[Outstanding_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530300].[Net_Paid_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530300].[Electronic]'
GO
GRANT SELECT ON  [dbo].[B2530300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2530300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2530300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2530300] TO [DYNGRP]
GO
