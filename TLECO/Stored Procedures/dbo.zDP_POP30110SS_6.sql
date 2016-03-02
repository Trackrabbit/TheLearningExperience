SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30110SS_6] (@Product_Indicator smallint, @JOBNUMBR char(17), @COSTCODE char(27), @PONUMBER char(17), @ORD int) AS  set nocount on SELECT TOP 1  PONUMBER, ORD, POLNESTA, POTYPE, ITEMNMBR, ITEMDESC, VENDORID, VNDITNUM, VNDITDSC, NONINVEN, LOCNCODE, UOFM, UMQTYINB, QTYORDER, QTYCANCE, UNITCOST, EXTDCOST, INVINDX, REQDATE, PRMDATE, PRMSHPDTE, REQSTDBY, COMMNTID, DOCTYPE, POLNEARY_1, POLNEARY_2, POLNEARY_3, POLNEARY_4, POLNEARY_5, POLNEARY_6, POLNEARY_7, POLNEARY_8, POLNEARY_9, DECPLCUR, DECPLQTY, BRKFLD1, JOBNUMBR, COSTCODE, COSTTYPE, CURRNIDX, ORUNTCST, OREXTCST, LINEORIGIN, FREEONBOARD, ODECPLCU, Product_Indicator, Source_Document_Number, Source_Document_Line_Num, RELEASEBYDATE, Released_Date, Purchase_IV_Item_Taxable, Purchase_Item_Tax_Schedu, Purchase_Site_Tax_Schedu, PURCHSITETXSCHSRC, BSIVCTTL, TAXAMNT, ORTAXAMT, BCKTXAMT, OBTAXAMT, Landed_Cost_Group_ID, SHIPMTHD, LineNumber, ORIGPRMDATE, FSTRCPTDT, LSTRCPTDT, RELEASE, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, ADDRSOURCE, Flags, ProjNum, CostCatID, ITMTRKOP, VCTNMTHD, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .POP30110 WHERE Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND PONUMBER = @PONUMBER AND ORD = @ORD ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, PONUMBER ASC, ORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30110SS_6] TO [DYNGRP]
GO
