CREATE TABLE [dbo].[POP10310]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITDSC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[ACTLSHIP] [datetime] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVINDX] [int] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RcptLineNoteIDArray_1] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_2] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_3] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_4] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_5] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_6] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_7] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_8] [numeric] (19, 5) NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTCODE] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTYPE] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[BOLPRONUMBER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Capital_Item] [tinyint] NOT NULL,
[Product_Indicator] [smallint] NOT NULL,
[Purchase_IV_Item_Taxable] [smallint] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Site_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[Revalue_Inventory] [tinyint] NOT NULL,
[Tolerance_Percentage] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[Remaining_AP_Amount] [numeric] (19, 5) NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_Warnings] [smallint] NOT NULL,
[BackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[OrigBackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[Landed_Cost] [tinyint] NOT NULL,
[Invoice_Match] [tinyint] NOT NULL,
[RCPTRETNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTRETLNNUM] [int] NOT NULL,
[INVRETNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVRETLNNUM] [int] NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[ProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TrackedDropShipped] [tinyint] NOT NULL,
[OriginatingPrepaymentAmt] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10310] ADD CONSTRAINT [CK__POP10310__ACTLSH__5911273F] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[POP10310] ADD CONSTRAINT [PKPOP10310] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10310] ON [dbo].[POP10310] ([ITEMNMBR], [POPRCTNM], [RCPTLNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10310] ON [dbo].[POP10310] ([POPRCTNM], [PONUMBER], [RCPTLNNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10310] ON [dbo].[POP10310] ([Product_Indicator], [JOBNUMBR], [COSTCODE], [POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[VNDITDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10310].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[RcptLineNoteIDArray_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[COSTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[COSTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[BOLPRONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Capital_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Product_Indicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Purchase_IV_Item_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[Purchase_Site_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Revalue_Inventory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Tolerance_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[Remaining_AP_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Landed_Cost_Warnings]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[BackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[OrigBackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Landed_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[Invoice_Match]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[RCPTRETNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[RCPTRETLNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[INVRETNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[INVRETLNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[ISLINEINTRA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[ProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10310].[CostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10310].[TrackedDropShipped]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[OriginatingPrepaymentAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10310].[ORTDISAM]'
GO
GRANT SELECT ON  [dbo].[POP10310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10310] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP10310] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP10310] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP10310] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP10310] TO [RAPIDGRP]
GO
