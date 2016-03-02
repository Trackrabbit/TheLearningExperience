CREATE TABLE [dbo].[POP30100]
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
[TRDPCTPR] [numeric] (23, 0) NOT NULL,
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
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[ALLOWSOCMTS] [tinyint] NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[Revision_Number] [smallint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXSCHSRC] [smallint] NOT NULL,
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
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[PrepaymentAmount] [numeric] (19, 5) NOT NULL,
[OriginatingPrepaymentAmt] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__POP30100__DEX_RO__35A8EC92] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_POP30100U] ON [dbo].[POP30100] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.POP30100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.POP30100, inserted WHERE POP30100.PONUMBER = inserted.PONUMBER END set nocount off    
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__TIME1__33C0A420] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__CONTEN__34B4C859] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__CREATD__30E43775] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__DISCDA__2EFBEF03] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__DOCDAT__284EF174] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__DUEDAT__2FF0133C] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__EXCHDA__32CC7FE7] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__LSTEDT__294315AD] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__LSTPRT__2A3739E6] CHECK ((datepart(hour,[LSTPRTDT])=(0) AND datepart(minute,[LSTPRTDT])=(0) AND datepart(second,[LSTPRTDT])=(0) AND datepart(millisecond,[LSTPRTDT])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__MODIFD__31D85BAE] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__PRMDAT__2B2B5E1F] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__PRMSHP__2C1F8258] CHECK ((datepart(hour,[PRMSHPDTE])=(0) AND datepart(minute,[PRMSHPDTE])=(0) AND datepart(second,[PRMSHPDTE])=(0) AND datepart(millisecond,[PRMSHPDTE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__REQDAT__2D13A691] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [CK__POP30100__REQTND__2E07CACA] CHECK ((datepart(hour,[REQTNDT])=(0) AND datepart(minute,[REQTNDT])=(0) AND datepart(second,[REQTNDT])=(0) AND datepart(millisecond,[REQTNDT])=(0)))
GO
ALTER TABLE [dbo].[POP30100] ADD CONSTRAINT [PKPOP30100] PRIMARY KEY NONCLUSTERED  ([PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP30100] ON [dbo].[POP30100] ([DOCDATE], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP30100] ON [dbo].[POP30100] ([POTYPE], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP30100] ON [dbo].[POP30100] ([TRXSORCE], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP30100] ON [dbo].[POP30100] ([VENDORID], [PONUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[POSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[STATGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[POTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CONFIRM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[LSTEDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[LSTPRTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[PRMSHPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[REQTNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[REMSUBTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[SUBTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[TRDPCTPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[VADCDPAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[TIMESPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PONOTIDS_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[CANCSUB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OREMSUBT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORSUBTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[Originating_Canceled_Sub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORFRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OMISCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ODISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[BUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[ALLOWSOCMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Revision_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[TXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Purchase_Freight_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Purchase_Misc_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[BackoutFreightTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OrigBackoutFreightTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[BackoutMiscTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OrigBackoutMiscTaxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[POPCONTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30100].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[CNTRLBLKTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHCMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHCONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHCCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHCOUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHPHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHPHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHPHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30100].[PURCHFAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[BLNKTLINEEXTQTYSUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30100].[Print_Phone_NumberGB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[PrepaymentAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30100].[OriginatingPrepaymentAmt]'
GO
GRANT SELECT ON  [dbo].[POP30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP30100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP30100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP30100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP30100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP30100] TO [RAPIDGRP]
GO
