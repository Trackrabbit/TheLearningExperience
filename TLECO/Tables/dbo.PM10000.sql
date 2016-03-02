CREATE TABLE [dbo].[PM10000]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[VADDCDPR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[PRCHAMNT] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[CASHAMNT] [numeric] (19, 5) NOT NULL,
[CAMCBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CDOCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAMTDATE] [datetime] NOT NULL,
[CAMPMTNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[CHAMCBID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[CAMPYNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[CCAMPYNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCRCTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCARDDT] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UN1099AM] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[MSCCHAMT] [numeric] (19, 5) NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[APDSTKAM] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[TXENGCLD] [tinyint] NOT NULL,
[PMWRKMSG] [binary] (4) NOT NULL,
[PMDSTMSG] [binary] (4) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[PGRAMSBJ] [smallint] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[BKTPURAM] [numeric] (19, 5) NOT NULL,
[PCHSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRINTED] [tinyint] NOT NULL,
[PRCTDISC] [smallint] NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[ICDISTS] [tinyint] NOT NULL,
[PMICMSGS] [binary] (4) NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PRCHDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[CORRNXST] [tinyint] NOT NULL,
[VCHRNCOR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMWRKMS2] [binary] (4) NOT NULL,
[BNKRCAMT] [numeric] (19, 5) NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[Electronic] [tinyint] NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[DocPrinted] [tinyint] NOT NULL,
[TaxInvReqd] [tinyint] NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[TEN99TYPE] [smallint] NOT NULL,
[TEN99BOXNUMBER] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__PM10000__DEX_ROW__23C737E7] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_PM10000U] ON [dbo].[PM10000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.PM10000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.PM10000, inserted WHERE PM10000.BACHNUMB = inserted.BACHNUMB AND PM10000.BCHSOURC = inserted.BCHSOURC AND PM10000.VCHNUMWK = inserted.VCHNUMWK END set nocount off    
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__CAMTDAT__1D1A3A58] CHECK ((datepart(hour,[CAMTDATE])=(0) AND datepart(minute,[CAMTDATE])=(0) AND datepart(second,[CAMTDATE])=(0) AND datepart(millisecond,[CAMTDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__CHEKDAT__1E0E5E91] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__CRCARDD__1F0282CA] CHECK ((datepart(hour,[CRCARDDT])=(0) AND datepart(minute,[CRCARDDT])=(0) AND datepart(second,[CRCARDDT])=(0) AND datepart(millisecond,[CRCARDDT])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__DISCDAT__1C26161F] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__DOCDATE__1949A974] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__DUEDATE__1B31F1E6] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__MODIFDT__1FF6A703] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__POSTEDD__20EACB3C] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__PRCHDAT__22D313AE] CHECK ((datepart(hour,[PRCHDATE])=(0) AND datepart(minute,[PRCHDATE])=(0) AND datepart(second,[PRCHDATE])=(0) AND datepart(millisecond,[PRCHDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__PSTGDAT__1A3DCDAD] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [CK__PM10000__Tax_Dat__21DEEF75] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[PM10000] ADD CONSTRAINT [PKPM10000] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [VCHNUMWK]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL5PM10000] ON [dbo].[PM10000] ([BACHNUMB], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM10000] ON [dbo].[PM10000] ([BACHNUMB], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM10000] ON [dbo].[PM10000] ([DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM10000] ON [dbo].[PM10000] ([VCHNUMWK]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM10000] ON [dbo].[PM10000] ([VENDORID], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VADDCDPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[PRCHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[CASHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CAMCBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CDOCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[CAMTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CAMPMTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CHAMCBID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CAMPYNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CCAMPYNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CCRCTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[CRCARDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[UN1099AM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[APDSTKAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[TXENGCLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PMWRKMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PMDSTMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PGRAMSBJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[BKTPURAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[PCHSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PRINTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PRCTDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[ICDISTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PMICMSGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10000].[PRCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[CORRNXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10000].[VCHRNCOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[PMWRKMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[BNKRCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[Electronic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[DocPrinted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[TaxInvReqd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10000].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[TEN99BOXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10000].[Workflow_Status]'
GO
GRANT SELECT ON  [dbo].[PM10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM10000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM10000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM10000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM10000] TO [RAPIDGRP]
GO
