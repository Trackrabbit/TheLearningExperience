CREATE TABLE [dbo].[SEE30303]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTSEQNM] [int] NOT NULL,
[PCHSRCTY] [smallint] NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXQTYInBase] [numeric] (19, 5) NOT NULL,
[TRXQTY] [numeric] (19, 5) NOT NULL,
[VARIANCEQTY] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[IsOverrideReceipt] [tinyint] NOT NULL,
[IsOverrideRelieved] [tinyint] NOT NULL,
[OverrideRelievedDate] [datetime] NOT NULL,
[RCPTNMBR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HSTMODUL] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[SRCRFRNCNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXREFERENCE] [smallint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[IVIVINDX] [int] NOT NULL,
[IVIVOFIX] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [CK__SEE30303__TIME1__2AE11392] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [CK__SEE30303__DATE1__271082AE] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [CK__SEE30303__DOCDAT__2804A6E7] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [CK__SEE30303__GLPOST__28F8CB20] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [CK__SEE30303__Overri__29ECEF59] CHECK ((datepart(hour,[OverrideRelievedDate])=(0) AND datepart(minute,[OverrideRelievedDate])=(0) AND datepart(second,[OverrideRelievedDate])=(0) AND datepart(millisecond,[OverrideRelievedDate])=(0)))
GO
ALTER TABLE [dbo].[SEE30303] ADD CONSTRAINT [PKSEE30303] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [DOCDATE], [RCTSEQNM], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SEE30303] ON [dbo].[SEE30303] ([DOCDATE], [ITEMNMBR], [TRXQTY], [EXTDCOST], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [AK5SEE30303] ON [dbo].[SEE30303] ([GLPOSTDT], [ITEMNMBR], [QTYTYPE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SEE30303] ON [dbo].[SEE30303] ([GLPOSTDT], [ITEMNMBR], [TRXQTY], [EXTDCOST], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SEE30303] ON [dbo].[SEE30303] ([ITEMNMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SEE30303].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SEE30303].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[RCPTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[RCTSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[PCHSRCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[TRXQTYInBase]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[TRXQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[VARIANCEQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[IsOverrideReceipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[IsOverrideRelieved]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SEE30303].[OverrideRelievedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[RCPTNMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[HSTMODUL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[SRCRFRNCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[TRXREFERENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[IVIVOFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SEE30303].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SEE30303].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SEE30303].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SEE30303].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SEE30303].[TIME1]'
GO
GRANT SELECT ON  [dbo].[SEE30303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SEE30303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SEE30303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SEE30303] TO [DYNGRP]
GO
