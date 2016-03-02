CREATE TABLE [dbo].[POP10600]
(
[POPIVCNO] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCLINNO] [int] NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[LCLINENUMBER] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[QTYINVCD] [numeric] (19, 5) NOT NULL,
[QTYINVRESERVE] [numeric] (19, 5) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[RCPTCOST] [numeric] (19, 5) NOT NULL,
[ORCPTCOST] [numeric] (19, 5) NOT NULL,
[ACPURTOT] [numeric] (19, 5) NOT NULL,
[UPPVTOTL] [numeric] (19, 5) NOT NULL,
[PURPVIDX] [int] NOT NULL,
[PCHRPTCT] [numeric] (19, 5) NOT NULL,
[SPRCPTCT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[Revalue_Inventory] [tinyint] NOT NULL,
[PPVTotal] [numeric] (19, 5) NOT NULL,
[INVINDX] [int] NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[PRCNTOFTTL] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10600] ADD CONSTRAINT [PKPOP10600] PRIMARY KEY NONCLUSTERED  ([POPIVCNO], [IVCLINNO], [POPRCTNM], [RCPTLNNM], [LCLINENUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10600] ON [dbo].[POP10600] ([POPRCTNM], [RCPTLNNM], [Status], [LCLINENUMBER], [POPIVCNO], [IVCLINNO]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10600].[POPIVCNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[IVCLINNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10600].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[LCLINENUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[QTYINVCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[QTYINVRESERVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[RCPTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[ORCPTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[ACPURTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[UPPVTOTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[PCHRPTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[SPRCPTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[Revalue_Inventory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[PPVTotal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10600].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10600].[PRCNTOFTTL]'
GO
GRANT SELECT ON  [dbo].[POP10600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10600] TO [DYNGRP]
GO
