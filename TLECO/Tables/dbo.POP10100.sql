CREATE TABLE [dbo].[POP10100]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTATUS] [smallint] NOT NULL,
[STATGRP] [smallint] NOT NULL,
[POTYPE] [smallint] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONFIRM1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[LSTEDTDT] [datetime] NOT NULL,
[LSTPRTDT] [datetime] NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[PRMSHPDTE] [datetime] NOT NULL,
[REQDATE] [datetime] NOT NULL,
[REQTNDT] [datetime] NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REMSUBTO] [numeric] (19, 5) NOT NULL,
[SUBTOTAL] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[MSCCHAMT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINORDER] [numeric] (19, 5) NOT NULL,
[VADCDPAD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[TRDPCTPR] [numeric] (23, 0) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMESPRT] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[PONOTIDS_1] [numeric] (19, 5) NOT NULL,
[PONOTIDS_2] [numeric] (19, 5) NOT NULL,
[PONOTIDS_3] [numeric] (19, 5) NOT NULL,
[PONOTIDS_4] [numeric] (19, 5) NOT NULL,
[PONOTIDS_5] [numeric] (19, 5) NOT NULL,
[PONOTIDS_6] [numeric] (19, 5) NOT NULL,
[PONOTIDS_7] [numeric] (19, 5) NOT NULL,
[PONOTIDS_8] [numeric] (19, 5) NOT NULL,
[PONOTIDS_9] [numeric] (19, 5) NOT NULL,
[PONOTIDS_10] [numeric] (19, 5) NOT NULL,
[PONOTIDS_11] [numeric] (19, 5) NOT NULL,
[PONOTIDS_12] [numeric] (19, 5) NOT NULL,
[PONOTIDS_13] [numeric] (19, 5) NOT NULL,
[PONOTIDS_14] [numeric] (19, 5) NOT NULL,
[PONOTIDS_15] [numeric] (19, 5) NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CANCSUB] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[OREMSUBT] [numeric] (19, 5) NOT NULL,
[ORSUBTOT] [numeric] (19, 5) NOT NULL,
[Originating_Canceled_Sub] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[ORFRTAMT] [numeric] (19, 5) NOT NULL,
[OMISCAMT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[ODISAMTAV] [numeric] (19, 5) NOT NULL,
[BUYERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ONORDAMT] [numeric] (19, 5) NOT NULL,
[ORORDAMT] [numeric] (19, 5) NOT NULL,
[HOLD] [tinyint] NOT NULL,
[ONHOLDDATE] [datetime] NOT NULL,
[ONHOLDBY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOLDREMOVEDATE] [datetime] NOT NULL,
[HOLDREMOVEBY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALLOWSOCMTS] [tinyint] NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[Revision_Number] [smallint] NOT NULL,
[Change_Order_Flag] [smallint] NOT NULL,
[PO_Field_Changes] [binary] (4) NOT NULL,
[PO_Status_Orig] [smallint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXSCHSRC] [smallint] NOT NULL,
[TXENGCLD] [tinyint] NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[Purchase_Freight_Taxable] [smallint] NOT NULL,
[Purchase_Misc_Taxable] [smallint] NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[BackoutFreightTaxAmt] [numeric] (19, 5) NOT NULL,
[OrigBackoutFreightTaxAmt] [numeric] (19, 5) NOT NULL,
[BackoutMiscTaxAmt] [numeric] (19, 5) NOT NULL,
[OrigBackoutMiscTaxAmt] [numeric] (19, 5) NOT NULL,
[Flags] [smallint] NOT NULL,
[BackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[OrigBackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[POPCONTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTENDDTE] [datetime] NOT NULL,
[CNTRLBLKTBY] [smallint] NOT NULL,
[PURCHCMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHCONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHCITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHCCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHCOUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHPHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHPHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHPHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHFAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BLNKTLINEEXTQTYSUM] [numeric] (19, 5) NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[PrepaymentAmount] [numeric] (19, 5) NOT NULL,
[OriginatingPrepaymentAmt] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__POP10100__DEX_RO__0BB2B2C6] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_POP10100U] ON [dbo].[POP10100] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.POP10100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.POP10100, inserted WHERE POP10100.PONUMBER = inserted.PONUMBER END set nocount off    
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__TIME1__07E221E2] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__CONTEN__0ABE8E8D] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__CREATD__0505B537] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__DISCDA__031D6CC5] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__DOCDAT__7C706F36] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__DUEDAT__041190FE] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__EXCHDA__06EDFDA9] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__HOLDRE__09CA6A54] CHECK ((datepart(hour,[HOLDREMOVEDATE])=(0) AND datepart(minute,[HOLDREMOVEDATE])=(0) AND datepart(second,[HOLDREMOVEDATE])=(0) AND datepart(millisecond,[HOLDREMOVEDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__LSTEDT__7D64936F] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__LSTPRT__7E58B7A8] CHECK ((datepart(hour,[LSTPRTDT])=(0) AND datepart(minute,[LSTPRTDT])=(0) AND datepart(second,[LSTPRTDT])=(0) AND datepart(millisecond,[LSTPRTDT])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__MODIFD__05F9D970] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__ONHOLD__08D6461B] CHECK ((datepart(hour,[ONHOLDDATE])=(0) AND datepart(minute,[ONHOLDDATE])=(0) AND datepart(second,[ONHOLDDATE])=(0) AND datepart(millisecond,[ONHOLDDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__PRMDAT__7F4CDBE1] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__PRMSHP__0041001A] CHECK ((datepart(hour,[PRMSHPDTE])=(0) AND datepart(minute,[PRMSHPDTE])=(0) AND datepart(second,[PRMSHPDTE])=(0) AND datepart(millisecond,[PRMSHPDTE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__REQDAT__01352453] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [CK__POP10100__REQTND__0229488C] CHECK ((datepart(hour,[REQTNDT])=(0) AND datepart(minute,[REQTNDT])=(0) AND datepart(second,[REQTNDT])=(0) AND datepart(millisecond,[REQTNDT])=(0)))
GO
ALTER TABLE [dbo].[POP10100] ADD CONSTRAINT [PKPOP10100] PRIMARY KEY NONCLUSTERED  ([PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10100] ON [dbo].[POP10100] ([DOCDATE], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6POP10100] ON [dbo].[POP10100] ([STATGRP], [DOCDATE], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10100] ON [dbo].[POP10100] ([STATGRP], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP10100] ON [dbo].[POP10100] ([STATGRP], [VENDORID], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10100] ON [dbo].[POP10100] ([VENDORID], [PONUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[POSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[STATGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[POTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CONFIRM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[LSTEDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[LSTPRTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[PRMSHPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[REQTNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[REMSUBTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[SUBTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[VADCDPAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[TRDPCTPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[TIMESPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PONOTIDS_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[CANCSUB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OREMSUBT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORSUBTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[Originating_Canceled_Sub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORFRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OMISCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ODISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[BUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ONORDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORORDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[ONHOLDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[ONHOLDBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[HOLDREMOVEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[HOLDREMOVEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[ALLOWSOCMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Revision_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Change_Order_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[PO_Field_Changes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[PO_Status_Orig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[TXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[TXENGCLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Purchase_Freight_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Purchase_Misc_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[BackoutFreightTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OrigBackoutFreightTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[BackoutMiscTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OrigBackoutMiscTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[BackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OrigBackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[POPCONTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10100].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[CNTRLBLKTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHCMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHCONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHCCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHCOUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHPHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHPHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHPHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10100].[PURCHFAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[BLNKTLINEEXTQTYSUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10100].[Print_Phone_NumberGB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[PrepaymentAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10100].[OriginatingPrepaymentAmt]'
GO
GRANT SELECT ON  [dbo].[POP10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP10100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP10100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP10100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP10100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[POP10100] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[POP10100] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[POP10100] TO [rpt_purchasing manager]
GO
