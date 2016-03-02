CREATE TABLE [dbo].[PM20000]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UN1099AM] [numeric] (19, 5) NOT NULL,
[BKTPURAM] [numeric] (19, 5) NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DINVPDOF] [datetime] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[PGRAMSBJ] [smallint] NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYENTTYP] [smallint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCHAMNT] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[MSCCHAMT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[TTLPYMTS] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PCHSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PRCTDISC] [smallint] NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PRCHDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[BNKRCAMT] [numeric] (19, 5) NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[Electronic] [tinyint] NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[DocPrinted] [tinyint] NOT NULL,
[TaxInvReqd] [tinyint] NOT NULL,
[VNDCHKNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99TYPE] [smallint] NOT NULL,
[TEN99BOXNUMBER] [smallint] NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__PM20000__DEX_ROW__4804985D] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_PM20000U] ON [dbo].[PM20000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.PM20000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.PM20000, inserted WHERE PM20000.VCHRNMBR = inserted.VCHRNMBR AND PM20000.DOCTYPE = inserted.DOCTYPE END set nocount off    
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__DINVPDO__424BBF07] CHECK ((datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__DISCDAT__40637695] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__DOCDATE__3F6F525C] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__DUEDATE__41579ACE] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__MODIFDT__44340779] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__POSTEDD__433FE340] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__PRCHDAT__47107424] CHECK ((datepart(hour,[PRCHDATE])=(0) AND datepart(minute,[PRCHDATE])=(0) AND datepart(second,[PRCHDATE])=(0) AND datepart(millisecond,[PRCHDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__PSTGDAT__45282BB2] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [CK__PM20000__Tax_Dat__461C4FEB] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[PM20000] ADD CONSTRAINT [PKPM20000] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7PM20000] ON [dbo].[PM20000] ([DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8PM20000] ON [dbo].[PM20000] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PM20000] ON [dbo].[PM20000] ([VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM20000] ON [dbo].[PM20000] ([VENDORID], [DOCDATE], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM20000] ON [dbo].[PM20000] ([VENDORID], [DOCTYPE], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9PM20000] ON [dbo].[PM20000] ([VENDORID], [DOCTYPE], [DOCNUMBR], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM20000] ON [dbo].[PM20000] ([VENDORID], [DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM20000] ON [dbo].[PM20000] ([VENDORID], [DUEDATE], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[UN1099AM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[BKTPURAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[DINVPDOF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[PGRAMSBJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[PYENTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[PRCHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[TTLPYMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[PCHSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[PRCTDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20000].[PRCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[BNKRCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[Electronic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[DocPrinted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[TaxInvReqd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20000].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[TEN99BOXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20000].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20000].[Workflow_Status]'
GO
GRANT SELECT ON  [dbo].[PM20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM20000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM20000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM20000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM20000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM20000] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[PM20000] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM20000] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM20000] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM20000] TO [rpt_executive]
GO
