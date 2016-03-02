SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10110L_3] (@VNDITNUM_RS char(31), @PONUMBER_RS char(17), @ORD_RS int, @VNDITNUM_RE char(31), @PONUMBER_RE char(17), @ORD_RE int) AS  set nocount on IF @VNDITNUM_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, ORD, POLNESTA, POTYPE, ITEMNMBR, ITEMDESC, VENDORID, VNDITNUM, VNDITDSC, NONINVEN, LOCNCODE, UOFM, UMQTYINB, QTYORDER, QTYCANCE, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, EXTDCOST, INVINDX, REQDATE, PRMDATE, PRMSHPDTE, REQSTDBY, COMMNTID, DOCTYPE, POLNEARY_1, POLNEARY_2, POLNEARY_3, POLNEARY_4, POLNEARY_5, POLNEARY_6, POLNEARY_7, POLNEARY_8, POLNEARY_9, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, BRKFLD1, PO_Line_Status_Orig, QTY_Canceled_Orig, OPOSTSUB, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, LINEORIGIN, FREEONBOARD, ODECPLCU, Capital_Item, Product_Indicator, Source_Document_Number, Source_Document_Line_Num, RELEASEBYDATE, Released_Date, Change_Order_Flag, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, PURCHSITETXSCHSRC, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Landed_Cost_Group_ID, PLNNDSPPLID, SHIPMTHD, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, LineNumber, ORIGPRMDATE, FSTRCPTDT, LSTRCPTDT, RELEASE, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, ADDRSOURCE, Flags, ProjNum, CostCatID, Print_Phone_NumberGB, QTYCommittedInBaseOrig, DEX_ROW_TS, DEX_ROW_ID FROM .POP10110 ORDER BY VNDITNUM DESC, PONUMBER DESC, ORD DESC END ELSE IF @VNDITNUM_RS = @VNDITNUM_RE BEGIN SELECT TOP 25  PONUMBER, ORD, POLNESTA, POTYPE, ITEMNMBR, ITEMDESC, VENDORID, VNDITNUM, VNDITDSC, NONINVEN, LOCNCODE, UOFM, UMQTYINB, QTYORDER, QTYCANCE, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, EXTDCOST, INVINDX, REQDATE, PRMDATE, PRMSHPDTE, REQSTDBY, COMMNTID, DOCTYPE, POLNEARY_1, POLNEARY_2, POLNEARY_3, POLNEARY_4, POLNEARY_5, POLNEARY_6, POLNEARY_7, POLNEARY_8, POLNEARY_9, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, BRKFLD1, PO_Line_Status_Orig, QTY_Canceled_Orig, OPOSTSUB, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, LINEORIGIN, FREEONBOARD, ODECPLCU, Capital_Item, Product_Indicator, Source_Document_Number, Source_Document_Line_Num, RELEASEBYDATE, Released_Date, Change_Order_Flag, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, PURCHSITETXSCHSRC, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Landed_Cost_Group_ID, PLNNDSPPLID, SHIPMTHD, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, LineNumber, ORIGPRMDATE, FSTRCPTDT, LSTRCPTDT, RELEASE, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, ADDRSOURCE, Flags, ProjNum, CostCatID, Print_Phone_NumberGB, QTYCommittedInBaseOrig, DEX_ROW_TS, DEX_ROW_ID FROM .POP10110 WHERE VNDITNUM = @VNDITNUM_RS AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY VNDITNUM DESC, PONUMBER DESC, ORD DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, ORD, POLNESTA, POTYPE, ITEMNMBR, ITEMDESC, VENDORID, VNDITNUM, VNDITDSC, NONINVEN, LOCNCODE, UOFM, UMQTYINB, QTYORDER, QTYCANCE, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, EXTDCOST, INVINDX, REQDATE, PRMDATE, PRMSHPDTE, REQSTDBY, COMMNTID, DOCTYPE, POLNEARY_1, POLNEARY_2, POLNEARY_3, POLNEARY_4, POLNEARY_5, POLNEARY_6, POLNEARY_7, POLNEARY_8, POLNEARY_9, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, BRKFLD1, PO_Line_Status_Orig, QTY_Canceled_Orig, OPOSTSUB, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, LINEORIGIN, FREEONBOARD, ODECPLCU, Capital_Item, Product_Indicator, Source_Document_Number, Source_Document_Line_Num, RELEASEBYDATE, Released_Date, Change_Order_Flag, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, PURCHSITETXSCHSRC, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Landed_Cost_Group_ID, PLNNDSPPLID, SHIPMTHD, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, LineNumber, ORIGPRMDATE, FSTRCPTDT, LSTRCPTDT, RELEASE, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, ADDRSOURCE, Flags, ProjNum, CostCatID, Print_Phone_NumberGB, QTYCommittedInBaseOrig, DEX_ROW_TS, DEX_ROW_ID FROM .POP10110 WHERE VNDITNUM BETWEEN @VNDITNUM_RS AND @VNDITNUM_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY VNDITNUM DESC, PONUMBER DESC, ORD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10110L_3] TO [DYNGRP]
GO
