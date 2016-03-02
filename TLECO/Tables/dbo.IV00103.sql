CREATE TABLE [dbo].[IV00103]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMVNDTY] [smallint] NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYRQSTN] [numeric] (19, 5) NOT NULL,
[QTYONORD] [numeric] (19, 5) NOT NULL,
[QTY_Drop_Shipped] [numeric] (19, 5) NOT NULL,
[LSTORDDT] [datetime] NOT NULL,
[LSORDQTY] [numeric] (19, 5) NOT NULL,
[LRCPTQTY] [numeric] (19, 5) NOT NULL,
[LSRCPTDT] [datetime] NOT NULL,
[LRCPTCST] [numeric] (19, 5) NOT NULL,
[AVRGLDTM] [int] NOT NULL,
[NORCTITM] [smallint] NOT NULL,
[MINORQTY] [numeric] (19, 5) NOT NULL,
[MAXORDQTY] [numeric] (19, 5) NOT NULL,
[ECORDQTY] [numeric] (19, 5) NOT NULL,
[VNDITDSC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Originating_Cost] [numeric] (19, 5) NOT NULL,
[Last_Currency_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[PRCHSUOM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[PLANNINGLEADTIME] [smallint] NOT NULL,
[ORDERMULTIPLE] [numeric] (19, 5) NOT NULL,
[MNFCTRITMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00103] ADD CONSTRAINT [CK__IV00103__LSRCPTD__6F4A8121] CHECK ((datepart(hour,[LSRCPTDT])=(0) AND datepart(minute,[LSRCPTDT])=(0) AND datepart(second,[LSRCPTDT])=(0) AND datepart(millisecond,[LSRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[IV00103] ADD CONSTRAINT [CK__IV00103__LSTORDD__703EA55A] CHECK ((datepart(hour,[LSTORDDT])=(0) AND datepart(minute,[LSTORDDT])=(0) AND datepart(second,[LSTORDDT])=(0) AND datepart(millisecond,[LSTORDDT])=(0)))
GO
ALTER TABLE [dbo].[IV00103] ADD CONSTRAINT [PKIV00103] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [ITMVNDTY], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV00103] ON [dbo].[IV00103] ([ITEMNMBR], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00103] ON [dbo].[IV00103] ([VENDORID], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5IV00103] ON [dbo].[IV00103] ([VENDORID], [VNDITDSC], [VNDITNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV00103] ON [dbo].[IV00103] ([VENDORID], [VNDITNUM], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6IV00103] ON [dbo].[IV00103] ([VNDITNUM], [ITEMNMBR], [VENDORID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[ITMVNDTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[QTYRQSTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[QTYONORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[QTY_Drop_Shipped]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00103].[LSTORDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[LSORDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[LRCPTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00103].[LSRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[LRCPTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[AVRGLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[NORCTITM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[MINORQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[MAXORDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[ECORDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[VNDITDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[Last_Originating_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[Last_Currency_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[PRCHSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00103].[PLANNINGLEADTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00103].[ORDERMULTIPLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00103].[MNFCTRITMNMBR]'
GO
GRANT SELECT ON  [dbo].[IV00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00103] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV00103] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV00103] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV00103] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV00103] TO [RAPIDGRP]
GO
