SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10110SS_1] (@PONUMBER char(17), @ORD int, @BRKFLD1 smallint) AS  set nocount on SELECT TOP 1  PONUMBER, ORD, POLNESTA, POTYPE, ITEMNMBR, ITEMDESC, VENDORID, VNDITNUM, VNDITDSC, NONINVEN, LOCNCODE, UOFM, UMQTYINB, QTYORDER, QTYCANCE, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, EXTDCOST, INVINDX, REQDATE, PRMDATE, PRMSHPDTE, REQSTDBY, COMMNTID, DOCTYPE, POLNEARY_1, POLNEARY_2, POLNEARY_3, POLNEARY_4, POLNEARY_5, POLNEARY_6, POLNEARY_7, POLNEARY_8, POLNEARY_9, DECPLCUR, DECPLQTY, ITMTRKOP, VCTNMTHD, BRKFLD1, PO_Line_Status_Orig, QTY_Canceled_Orig, OPOSTSUB, JOBNUMBR, COSTCODE, COSTTYPE, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, ORUNTCST, OREXTCST, LINEORIGIN, FREEONBOARD, ODECPLCU, Capital_Item, Product_Indicator, Source_Document_Number, Source_Document_Line_Num, RELEASEBYDATE, Released_Date, Change_Order_Flag, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, PURCHSITETXSCHSRC, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Landed_Cost_Group_ID, PLNNDSPPLID, SHIPMTHD, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, LineNumber, ORIGPRMDATE, FSTRCPTDT, LSTRCPTDT, RELEASE, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, ADDRSOURCE, Flags, ProjNum, CostCatID, Print_Phone_NumberGB, QTYCommittedInBaseOrig, DEX_ROW_TS, DEX_ROW_ID FROM .POP10110 WHERE PONUMBER = @PONUMBER AND ORD = @ORD AND BRKFLD1 = @BRKFLD1 ORDER BY PONUMBER ASC, ORD ASC, BRKFLD1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10110SS_1] TO [DYNGRP]
GO
