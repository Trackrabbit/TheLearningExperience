CREATE TABLE [dbo].[IVC10101]
(
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
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
[NONINVEN] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[QTYINSVC] [numeric] (19, 5) NOT NULL,
[QTYINUSE] [numeric] (19, 5) NOT NULL,
[QTYDMGED] [numeric] (19, 5) NOT NULL,
[QTYRTRND] [numeric] (19, 5) NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[EXTQTYSEL] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[DISCSALE] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MRKDNTYP] [smallint] NOT NULL,
[MRKDNAMT] [numeric] (19, 5) NOT NULL,
[MRKDNPCT] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[BKTSLSAM] [numeric] (19, 5) NOT NULL,
[TXBTXAMT] [numeric] (19, 5) NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTSHIP] [datetime] NOT NULL,
[ACTLSHIP] [datetime] NOT NULL,
[ReqShipDate] [datetime] NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[CMPSERNM] [tinyint] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRKFLD1] [smallint] NOT NULL,
[BRKFLD2] [smallint] NOT NULL,
[BRKFLD3] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCLINEERR] [binary] (4) NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC10101] ADD CONSTRAINT [CK__IVC10101__ACTLSH__52442E1F] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[IVC10101] ADD CONSTRAINT [CK__IVC10101__EXPTSH__53385258] CHECK ((datepart(hour,[EXPTSHIP])=(0) AND datepart(minute,[EXPTSHIP])=(0) AND datepart(second,[EXPTSHIP])=(0) AND datepart(millisecond,[EXPTSHIP])=(0)))
GO
ALTER TABLE [dbo].[IVC10101] ADD CONSTRAINT [CK__IVC10101__ReqShi__542C7691] CHECK ((datepart(hour,[ReqShipDate])=(0) AND datepart(minute,[ReqShipDate])=(0) AND datepart(second,[ReqShipDate])=(0) AND datepart(millisecond,[ReqShipDate])=(0)))
GO
ALTER TABLE [dbo].[IVC10101] ADD CONSTRAINT [PKIVC10101] PRIMARY KEY NONCLUSTERED  ([INVCNMBR], [DOCTYPE], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVC10101] ON [dbo].[IVC10101] ([DOCTYPE], [INVCNMBR], [LNITMSEQ], [CMPNTSEQ], [BRKFLD1], [BRKFLD2], [BRKFLD3]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL5IVC10101] ON [dbo].[IVC10101] ([INVCNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5IVC10101] ON [dbo].[IVC10101] ([INVCNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IVC10101] ON [dbo].[IVC10101] ([ITEMNMBR], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IVC10101] ON [dbo].[IVC10101] ([TRXSORCE], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[CSLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[SLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[MKDNINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[RTNSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[INUSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[INSRINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[DMGDINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[IVITMTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[EXTQTYSEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[DISCSALE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[MRKDNTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[MRKDNAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[MRKDNPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[TXBTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC10101].[EXPTSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC10101].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC10101].[ReqShipDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[CMPSERNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[BRKFLD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[BRKFLD3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[IVCLINEERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10101].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10101].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10101].[ISLINEINTRA]'
GO
GRANT SELECT ON  [dbo].[IVC10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC10101] TO [DYNGRP]
GO
