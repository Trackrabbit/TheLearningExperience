CREATE TABLE [dbo].[SOP10200]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[DROPSHIP] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[ORUNTPRC] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[REMPRICE] [numeric] (19, 5) NOT NULL,
[OREPRICE] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[MRKDNAMT] [numeric] (19, 5) NOT NULL,
[ORMRKDAM] [numeric] (19, 5) NOT NULL,
[MRKDNPCT] [smallint] NOT NULL,
[MRKDNTYP] [smallint] NOT NULL,
[INVINDX] [int] NOT NULL,
[CSLSINDX] [int] NOT NULL,
[SLSINDX] [int] NOT NULL,
[MKDNINDX] [int] NOT NULL,
[RTNSINDX] [int] NOT NULL,
[INUSINDX] [int] NOT NULL,
[INSRINDX] [int] NOT NULL,
[DMGDINDX] [int] NOT NULL,
[ITMTSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVITMTXB] [smallint] NOT NULL,
[BKTSLSAM] [numeric] (19, 5) NOT NULL,
[ORBKTSLS] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[TXBTXAMT] [numeric] (19, 5) NOT NULL,
[OTAXTAMT] [numeric] (19, 5) NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[DISCSALE] [numeric] (19, 5) NOT NULL,
[ORDAVSLS] [numeric] (19, 5) NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[QTYINSVC] [numeric] (19, 5) NOT NULL,
[QTYINUSE] [numeric] (19, 5) NOT NULL,
[QTYDMGED] [numeric] (19, 5) NOT NULL,
[QTYRTRND] [numeric] (19, 5) NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[QTYCANCE] [numeric] (19, 5) NOT NULL,
[QTYCANOT] [numeric] (19, 5) NOT NULL,
[QTYONPO] [numeric] (19, 5) NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[QTYPRBAC] [numeric] (19, 5) NOT NULL,
[QTYPRBOO] [numeric] (19, 5) NOT NULL,
[QTYPRINV] [numeric] (19, 5) NOT NULL,
[QTYPRORD] [numeric] (19, 5) NOT NULL,
[QTYPRVRECVD] [numeric] (19, 5) NOT NULL,
[QTYRECVD] [numeric] (19, 5) NOT NULL,
[QTYREMAI] [numeric] (19, 5) NOT NULL,
[QTYREMBO] [numeric] (19, 5) NOT NULL,
[QTYTBAOR] [numeric] (19, 5) NOT NULL,
[QTYTOINV] [numeric] (19, 5) NOT NULL,
[QTYTORDR] [numeric] (19, 5) NOT NULL,
[QTYFULFI] [numeric] (19, 5) NOT NULL,
[QTYSLCTD] [numeric] (19, 5) NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[EXTQTYAL] [numeric] (19, 5) NOT NULL,
[EXTQTYSEL] [numeric] (19, 5) NOT NULL,
[ReqShipDate] [datetime] NOT NULL,
[FUFILDAT] [datetime] NOT NULL,
[ACTLSHIP] [datetime] NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRKFLD1] [smallint] NOT NULL,
[BRKFLD2] [smallint] NOT NULL,
[BRKFLD3] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPLNERR] [binary] (4) NOT NULL,
[ORGSEQNM] [int] NOT NULL,
[ITEMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHSTAT] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[QTYTOSHP] [numeric] (19, 5) NOT NULL,
[XFRSHDOC] [tinyint] NOT NULL,
[EXCEPTIONALDEMAND] [tinyint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXSCHSRC] [smallint] NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipToName] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Flags] [smallint] NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[OrigBackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[GPSFOINTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEGRATIONSOURCE] [smallint] NOT NULL,
[INTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTLNSEQNBR] [numeric] (19, 5) NOT NULL,
[CONTSTARTDTE] [datetime] NOT NULL,
[CONTENDDTE] [datetime] NOT NULL,
[CONTITEMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTSERIALNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BULKPICKPRNT] [tinyint] NOT NULL,
[INDPICKPRNT] [tinyint] NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[SOFULFILLMENTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MULTIPLEBINS] [tinyint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SOP10200__DEX_RO__1FEE83D3] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SOP10200U] ON [dbo].[SOP10200] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.SOP10200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SOP10200, inserted WHERE SOP10200.SOPTYPE = inserted.SOPTYPE AND SOP10200.SOPNUMBE = inserted.SOPNUMBE AND SOP10200.LNITMSEQ = inserted.LNITMSEQ AND SOP10200.CMPNTSEQ = inserted.CMPNTSEQ END set nocount off    
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [CK__SOP10200__ACTLSH__0638D371] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [CK__SOP10200__CONTEN__072CF7AA] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [CK__SOP10200__CONTST__08211BE3] CHECK ((datepart(hour,[CONTSTARTDTE])=(0) AND datepart(minute,[CONTSTARTDTE])=(0) AND datepart(second,[CONTSTARTDTE])=(0) AND datepart(millisecond,[CONTSTARTDTE])=(0)))
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [CK__SOP10200__FUFILD__0915401C] CHECK ((datepart(hour,[FUFILDAT])=(0) AND datepart(minute,[FUFILDAT])=(0) AND datepart(second,[FUFILDAT])=(0) AND datepart(millisecond,[FUFILDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [CK__SOP10200__ReqShi__0A096455] CHECK ((datepart(hour,[ReqShipDate])=(0) AND datepart(minute,[ReqShipDate])=(0) AND datepart(second,[ReqShipDate])=(0) AND datepart(millisecond,[ReqShipDate])=(0)))
GO
ALTER TABLE [dbo].[SOP10200] ADD CONSTRAINT [PKSOP10200] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10200] ON [dbo].[SOP10200] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SOP10200] ON [dbo].[SOP10200] ([PURCHSTAT], [ITEMNMBR], [SOPTYPE], [SOPNUMBE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SOP10200] ON [dbo].[SOP10200] ([ReqShipDate], [ACTLSHIP], [SOPTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [AK6SOP10200] ON [dbo].[SOP10200] ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10200] ON [dbo].[SOP10200] ([SOPTYPE], [SOPNUMBE], [LNITMSEQ], [CMPNTSEQ], [BRKFLD1], [BRKFLD2], [BRKFLD3]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SOP10200] ON [dbo].[SOP10200] ([TRXSORCE], [ITEMNMBR], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[DROPSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[REMPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[OREPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[MRKDNAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORMRKDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[MRKDNPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[MRKDNTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[CSLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[SLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[MKDNINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[RTNSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[INUSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[INSRINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[DMGDINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[IVITMTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORBKTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[TXBTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[OTAXTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[DISCSALE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ORDAVSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYCANOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYONPO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYPRBAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYPRBOO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYPRINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYPRORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYPRVRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYREMAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYREMBO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYTBAOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYTOINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYTORDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYFULFI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYSLCTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[EXTQTYAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[EXTQTYSEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10200].[ReqShipDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10200].[FUFILDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10200].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[BRKFLD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[BRKFLD3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[SOPLNERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[ORGSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ITEMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[PURCHSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[QTYTOSHP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[XFRSHDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[EXCEPTIONALDEMAND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[TXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ShipToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[OrigBackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[GPSFOINTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[INTEGRATIONSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[INTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10200].[CONTLNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10200].[CONTSTARTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10200].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CONTITEMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[CONTSERIALNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[BULKPICKPRNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[INDPICKPRNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[ISLINEINTRA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10200].[SOFULFILLMENTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[MULTIPLEBINS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10200].[Print_Phone_NumberGB]'
GO
GRANT SELECT ON  [dbo].[SOP10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10200] TO [RAPIDGRP]
GO
