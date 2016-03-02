CREATE TABLE [dbo].[IVC30102]
(
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[ITMTSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVITMTXB] [smallint] NOT NULL,
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
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC30102] ADD CONSTRAINT [CK__IVC30102__ACTLSH__7775B2CE] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[IVC30102] ADD CONSTRAINT [CK__IVC30102__EXPTSH__7869D707] CHECK ((datepart(hour,[EXPTSHIP])=(0) AND datepart(minute,[EXPTSHIP])=(0) AND datepart(second,[EXPTSHIP])=(0) AND datepart(millisecond,[EXPTSHIP])=(0)))
GO
ALTER TABLE [dbo].[IVC30102] ADD CONSTRAINT [CK__IVC30102__ReqShi__795DFB40] CHECK ((datepart(hour,[ReqShipDate])=(0) AND datepart(minute,[ReqShipDate])=(0) AND datepart(second,[ReqShipDate])=(0) AND datepart(millisecond,[ReqShipDate])=(0)))
GO
ALTER TABLE [dbo].[IVC30102] ADD CONSTRAINT [PKIVC30102] PRIMARY KEY NONCLUSTERED  ([INVCNMBR], [DOCTYPE], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVC30102] ON [dbo].[IVC30102] ([DOCTYPE], [INVCNMBR], [LNITMSEQ], [CMPNTSEQ], [BRKFLD1], [BRKFLD2], [BRKFLD3]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IVC30102] ON [dbo].[IVC30102] ([ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[IVITMTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[EXTQTYSEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[MRKDNTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[MRKDNAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[MRKDNPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[BKTSLSAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[TXBTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC30102].[EXPTSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC30102].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC30102].[ReqShipDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC30102].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[CMPSERNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[BRKFLD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[BRKFLD3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC30102].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC30102].[ISLINEINTRA]'
GO
GRANT SELECT ON  [dbo].[IVC30102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC30102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC30102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC30102] TO [DYNGRP]
GO
