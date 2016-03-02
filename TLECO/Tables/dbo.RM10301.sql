CREATE TABLE [dbo].[RM10301]
(
[DOCTYPE] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[RMDNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCPRFIX] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMAPPTO] [smallint] NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSTPONBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[TRDDISCT] [smallint] NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[MISCAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[BKTSLSAM] [numeric] (19, 5) NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[TXENGCLD] [tinyint] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[CASHAMNT] [numeric] (19, 5) NOT NULL,
[CBKIDCSH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CASHDATE] [datetime] NOT NULL,
[DCNUMCSH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[CBKIDCHK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBKIDCRD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[DCNUMCHK] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[CRCRDNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTNCCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCARDDT] [datetime] NOT NULL,
[DCNUMCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISCRTND] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISAVAMT] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[LSTEDTDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMTREMSG] [binary] (4) NOT NULL,
[RMDPEMSG] [binary] (4) NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[SALEDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[CORRNXST] [tinyint] NOT NULL,
[DOCNCORR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMTREMSG2] [binary] (4) NOT NULL,
[DocPrinted] [tinyint] NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[Electronic] [tinyint] NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[DIRECTDEBIT] [tinyint] NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM10301__DEX_ROW__7A12F3AE] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM10301U] ON [dbo].[RM10301] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.RM10301 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM10301, inserted WHERE RM10301.RMDTYPAL = inserted.RMDTYPAL AND RM10301.RMDNUMWK = inserted.RMDNUMWK END set nocount off    
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__CASHDAT__1AA9E072] CHECK ((datepart(hour,[CASHDATE])=(0) AND datepart(minute,[CASHDATE])=(0) AND datepart(second,[CASHDATE])=(0) AND datepart(millisecond,[CASHDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__CHEKDAT__1B9E04AB] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__CRCARDD__1C9228E4] CHECK ((datepart(hour,[CRCARDDT])=(0) AND datepart(minute,[CRCARDDT])=(0) AND datepart(second,[CRCARDDT])=(0) AND datepart(millisecond,[CRCARDDT])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__DISCDAT__1D864D1D] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__DOCDATE__1E7A7156] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__DUEDATE__1F6E958F] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__GLPOSTD__2062B9C8] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__LSTEDTD__2156DE01] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__POSTEDD__224B023A] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__SALEDAT__233F2673] CHECK ((datepart(hour,[SALEDATE])=(0) AND datepart(minute,[SALEDATE])=(0) AND datepart(second,[SALEDATE])=(0) AND datepart(millisecond,[SALEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [CK__RM10301__Tax_Dat__24334AAC] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[RM10301] ADD CONSTRAINT [PKRM10301] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [RMDNUMWK]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL5RM10301] ON [dbo].[RM10301] ([BACHNUMB], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM10301] ON [dbo].[RM10301] ([BACHNUMB], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM10301] ON [dbo].[RM10301] ([BCHSOURC], [BACHNUMB], [RMDTYPAL], [RMDNUMWK]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM10301] ON [dbo].[RM10301] ([CUSTNMBR], [RMDNUMWK], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM10301] ON [dbo].[RM10301] ([DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[RMDNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DOCPRFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DOCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[COMAPPTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[NCOMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CSTPONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[SLSCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[TRDDISCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[MISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[TXENGCLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[CASHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CBKIDCSH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[CASHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DCNUMCSH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CBKIDCHK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CBKIDCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DCNUMCHK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CRCRDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[RCTNCCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[CRCARDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DCNUMCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DISCRTND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DISAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[LSTEDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[RMTREMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[RMDPEMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10301].[SALEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[CORRNXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10301].[DOCNCORR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[RMTREMSG2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DocPrinted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[Electronic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10301].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[DIRECTDEBIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10301].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[RM10301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM10301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM10301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM10301] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM10301] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM10301] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM10301] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM10301] TO [RAPIDGRP]
GO
