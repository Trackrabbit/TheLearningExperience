CREATE TABLE [dbo].[SOP30300]
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
[DOCNCORR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGSEQNM] [int] NOT NULL,
[ITEMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHSTAT] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
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
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTLNSEQNBR] [numeric] (19, 5) NOT NULL,
[CONTSTARTDTE] [datetime] NOT NULL,
[CONTENDDTE] [datetime] NOT NULL,
[CONTITEMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTSERIALNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SOP30300__DEX_RO__567F9EAE] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SOP30300U] ON [dbo].[SOP30300] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.SOP30300 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SOP30300, inserted WHERE SOP30300.SOPTYPE = inserted.SOPTYPE AND SOP30300.SOPNUMBE = inserted.SOPNUMBE AND SOP30300.LNITMSEQ = inserted.LNITMSEQ AND SOP30300.CMPNTSEQ = inserted.CMPNTSEQ END set nocount off    
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [CK__SOP30300__ACTLSH__4159993F] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [CK__SOP30300__CONTEN__424DBD78] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [CK__SOP30300__CONTST__4341E1B1] CHECK ((datepart(hour,[CONTSTARTDTE])=(0) AND datepart(minute,[CONTSTARTDTE])=(0) AND datepart(second,[CONTSTARTDTE])=(0) AND datepart(millisecond,[CONTSTARTDTE])=(0)))
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [CK__SOP30300__FUFILD__443605EA] CHECK ((datepart(hour,[FUFILDAT])=(0) AND datepart(minute,[FUFILDAT])=(0) AND datepart(second,[FUFILDAT])=(0) AND datepart(millisecond,[FUFILDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [CK__SOP30300__ReqShi__452A2A23] CHECK ((datepart(hour,[ReqShipDate])=(0) AND datepart(minute,[ReqShipDate])=(0) AND datepart(second,[ReqShipDate])=(0) AND datepart(millisecond,[ReqShipDate])=(0)))
GO
ALTER TABLE [dbo].[SOP30300] ADD CONSTRAINT [PKSOP30300] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SOP30300] ON [dbo].[SOP30300] ([DOCNCORR], [ORGSEQNM], [SOPTYPE], [SOPNUMBE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP30300] ON [dbo].[SOP30300] ([ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SOP30300] ON [dbo].[SOP30300] ([SOPTYPE], [QTYTOINV], [SOPNUMBE], [ITEMNMBR], [QTYBSUOM], [DECPLQTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SOP30300] ON [dbo].[SOP30300] ([SOPTYPE], [REMPRICE], [SOPNUMBE], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SOP30300] ON [dbo].[SOP30300] ([SOPTYPE], [ReqShipDate], [ACTLSHIP], [SOPNUMBE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP30300] ON [dbo].[SOP30300] ([SOPTYPE], [SOPNUMBE], [LNITMSEQ], [CMPNTSEQ], [BRKFLD1], [BRKFLD2], [BRKFLD3]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SOP30300] ON [dbo].[SOP30300] ([TRXSORCE], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[DROPSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[REMPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[OREPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[MRKDNAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORMRKDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[MRKDNPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[MRKDNTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[CSLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[SLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[MKDNINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[RTNSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[INUSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[INSRINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[DMGDINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[IVITMTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORBKTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[TXBTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[OTAXTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[DISCSALE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ORDAVSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYCANOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYPRBAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYPRBOO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYPRINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYPRORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYPRVRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYREMAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYREMBO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYTBAOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYTOINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYTORDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYFULFI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYSLCTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[EXTQTYAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[EXTQTYSEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30300].[ReqShipDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30300].[FUFILDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30300].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[BRKFLD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[BRKFLD3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[SOPLNERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[DOCNCORR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[ORGSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ITEMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[PURCHSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[EXCEPTIONALDEMAND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[TXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ShipToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30300].[CONTLNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30300].[CONTSTARTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30300].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CONTITEMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30300].[CONTSERIALNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[ISLINEINTRA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30300].[Print_Phone_NumberGB]'
GO
GRANT SELECT ON  [dbo].[SOP30300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP30300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP30300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP30300] TO [DYNGRP]
GO
