SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30310F_4] (@POPRCTNM_RS char(17), @RCPTLNNM_RS int, @UNITCOST_RS numeric(19,5), @DECPLQTY_RS smallint, @POPRCTNM_RE char(17), @RCPTLNNM_RE int, @UNITCOST_RE numeric(19,5), @DECPLQTY_RE smallint) AS  set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURRNIDX, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, PURPVIDX, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP30310 ORDER BY POPRCTNM ASC, RCPTLNNM ASC, UNITCOST ASC, DECPLQTY ASC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURRNIDX, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, PURPVIDX, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP30310 WHERE POPRCTNM = @POPRCTNM_RS AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND UNITCOST BETWEEN @UNITCOST_RS AND @UNITCOST_RE AND DECPLQTY BETWEEN @DECPLQTY_RS AND @DECPLQTY_RE ORDER BY POPRCTNM ASC, RCPTLNNM ASC, UNITCOST ASC, DECPLQTY ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, PONUMBER, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, UMQTYINB, ACTLSHIP, COMMNTID, INVINDX, UOFM, UNITCOST, EXTDCOST, LOCNCODE, RcptLineNoteIDArray_1, RcptLineNoteIDArray_2, RcptLineNoteIDArray_3, RcptLineNoteIDArray_4, RcptLineNoteIDArray_5, RcptLineNoteIDArray_6, RcptLineNoteIDArray_7, RcptLineNoteIDArray_8, NONINVEN, DECPLCUR, DECPLQTY, ITMTRKOP, TRXSORCE, JOBNUMBR, COSTCODE, COSTTYPE, CURRNIDX, ORUNTCST, OREXTCST, ODECPLCU, BOLPRONUMBER, Capital_Item, Product_Indicator, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, PURPVIDX, SHIPMTHD, Landed_Cost_Group_ID, Landed_Cost_Warnings, Landed_Cost, Invoice_Match, RCPTRETNUM, RCPTRETLNNUM, INVRETNUM, INVRETLNNUM, ISLINEINTRA, ProjNum, CostCatID, TrackedDropShipped, OriginatingPrepaymentAmt, ORDISTKN, ORTDISAM, DEX_ROW_ID FROM .POP30310 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND UNITCOST BETWEEN @UNITCOST_RS AND @UNITCOST_RE AND DECPLQTY BETWEEN @DECPLQTY_RS AND @DECPLQTY_RE ORDER BY POPRCTNM ASC, RCPTLNNM ASC, UNITCOST ASC, DECPLQTY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30310F_4] TO [DYNGRP]
GO
