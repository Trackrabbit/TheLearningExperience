SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10310F_4] (@Product_Indicator_RS smallint, @JOBNUMBR_RS char(17), @COSTCODE_RS char(27), @POPRCTNM_RS char(17), @RCPTLNNM_RS int, @Product_Indicator_RE smallint, @JOBNUMBR_RE char(17), @COSTCODE_RE char(27), @POPRCTNM_RE char(17), @RCPTLNNM_RE int) AS  set nocount on IF @Product_Indicator_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, RATETPID, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Revalue_Inventory, Tolerance_Percentage, PURPVIDX, Remaining_AP_Amount, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP10310 ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC END ELSE IF @Product_Indicator_RS = @Product_Indicator_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, RATETPID, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Revalue_Inventory, Tolerance_Percentage, PURPVIDX, Remaining_AP_Amount, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP10310 WHERE Product_Indicator = @Product_Indicator_RS AND JOBNUMBR BETWEEN @JOBNUMBR_RS AND @JOBNUMBR_RE AND COSTCODE BETWEEN @COSTCODE_RS AND @COSTCODE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, RATETPID, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Revalue_Inventory, Tolerance_Percentage, PURPVIDX, Remaining_AP_Amount, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP10310 WHERE Product_Indicator BETWEEN @Product_Indicator_RS AND @Product_Indicator_RE AND JOBNUMBR BETWEEN @JOBNUMBR_RS AND @JOBNUMBR_RE AND COSTCODE BETWEEN @COSTCODE_RS AND @COSTCODE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10310F_4] TO [DYNGRP]
GO
