CREATE TABLE [dbo].[RM20101]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[CSHRCTYP] [smallint] NOT NULL,
[CBKIDCRD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBKIDCSH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBKIDCHK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[POSTDATE] [datetime] NOT NULL,
[PSTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[LSTEDTDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[MISCAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[CASHAMNT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVAMT] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[DISCRTND] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSPORNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSTERCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DINVPDOF] [datetime] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[AGNGBUKT] [smallint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[SLSCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[SALEDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[Electronic] [tinyint] NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[BKTSLSAM] [numeric] (19, 5) NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[Factoring] [tinyint] NOT NULL,
[DIRECTDEBIT] [tinyint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM20101__DEX_ROW__04C58C4B] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM20101U] ON [dbo].[RM20101] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.RM20101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM20101, inserted WHERE RM20101.CUSTNMBR = inserted.CUSTNMBR AND RM20101.DOCNUMBR = inserted.DOCNUMBR AND RM20101.RMDTYPAL = inserted.RMDTYPAL END set nocount off    
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__DINVPDO__2FA4FD58] CHECK ((datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__DISCDAT__30992191] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__DOCDATE__318D45CA] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__DUEDATE__32816A03] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__GLPOSTD__33758E3C] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__LSTEDTD__3469B275] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__POSTDAT__355DD6AE] CHECK ((datepart(hour,[POSTDATE])=(0) AND datepart(minute,[POSTDATE])=(0) AND datepart(second,[POSTDATE])=(0) AND datepart(millisecond,[POSTDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__SALEDAT__3651FAE7] CHECK ((datepart(hour,[SALEDATE])=(0) AND datepart(minute,[SALEDATE])=(0) AND datepart(second,[SALEDATE])=(0) AND datepart(millisecond,[SALEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__Tax_Dat__37461F20] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [CK__RM20101__VOIDDAT__383A4359] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[RM20101] ADD CONSTRAINT [PKRM20101] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6RM20101] ON [dbo].[RM20101] ([CPRCSTNM], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM20101] ON [dbo].[RM20101] ([CPRCSTNM], [RMDTYPAL], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7RM20101] ON [dbo].[RM20101] ([CUSTNMBR], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM20101] ON [dbo].[RM20101] ([CUSTNMBR], [RMDTYPAL], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM20101] ON [dbo].[RM20101] ([RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM20101] ON [dbo].[RM20101] ([TRXSORCE], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[CSHRCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CBKIDCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CBKIDCSH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CBKIDCHK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[POSTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[PSTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[LSTEDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[ORTRXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[MISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[CASHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[DISAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[DISCRTND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CSPORNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[SLSTERCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[DINVPDOF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[AGNGBUKT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[SLSCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20101].[SALEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[Electronic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20101].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[Factoring]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[DIRECTDEBIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20101].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20101].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[RM20101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM20101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM20101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM20101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM20101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM20101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM20101] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM20101] TO [rpt_executive]
GO
