SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10210L_2] (@RequisitionLineStatus_RS smallint, @POPRequisitionNumber_RS char(17), @ORD_RS int, @RequisitionLineStatus_RE smallint, @POPRequisitionNumber_RE char(17), @ORD_RE int) AS  set nocount on IF @RequisitionLineStatus_RS IS NULL BEGIN SELECT TOP 25  POPRequisitionNumber, ORD, RequisitionLineStatus, LineNumber, ITEMNMBR, ITEMDESC, Item_Number_Note_Index, VENDORID, Vendor_Note_Index, NONINVEN, UOFM, UMQTYINB, LOCNCODE, Location_Code_Note_Index, QTYORDER, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, REQDATE, REQSTDBY, INVINDX, ACCNTNTINDX, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, DECPLQTY, ODECPLCU, ITMTRKOP, VCTNMTHD, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Print_Phone_NumberGB, ADDRSOURCE, Flags, SHIPMTHD, ShippingMethodNoteIndex, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, InvalidDataFlag, COMMNTID, Comment_Note_Index, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP10210 ORDER BY RequisitionLineStatus DESC, POPRequisitionNumber DESC, ORD DESC END ELSE IF @RequisitionLineStatus_RS = @RequisitionLineStatus_RE BEGIN SELECT TOP 25  POPRequisitionNumber, ORD, RequisitionLineStatus, LineNumber, ITEMNMBR, ITEMDESC, Item_Number_Note_Index, VENDORID, Vendor_Note_Index, NONINVEN, UOFM, UMQTYINB, LOCNCODE, Location_Code_Note_Index, QTYORDER, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, REQDATE, REQSTDBY, INVINDX, ACCNTNTINDX, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, DECPLQTY, ODECPLCU, ITMTRKOP, VCTNMTHD, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Print_Phone_NumberGB, ADDRSOURCE, Flags, SHIPMTHD, ShippingMethodNoteIndex, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, InvalidDataFlag, COMMNTID, Comment_Note_Index, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP10210 WHERE RequisitionLineStatus = @RequisitionLineStatus_RS AND POPRequisitionNumber BETWEEN @POPRequisitionNumber_RS AND @POPRequisitionNumber_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY RequisitionLineStatus DESC, POPRequisitionNumber DESC, ORD DESC END ELSE BEGIN SELECT TOP 25  POPRequisitionNumber, ORD, RequisitionLineStatus, LineNumber, ITEMNMBR, ITEMDESC, Item_Number_Note_Index, VENDORID, Vendor_Note_Index, NONINVEN, UOFM, UMQTYINB, LOCNCODE, Location_Code_Note_Index, QTYORDER, QTYCMTBASE, QTYUNCMTBASE, UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, REQDATE, REQSTDBY, INVINDX, ACCNTNTINDX, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, DECPLQTY, ODECPLCU, ITMTRKOP, VCTNMTHD, ADRSCODE, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Print_Phone_NumberGB, ADDRSOURCE, Flags, SHIPMTHD, ShippingMethodNoteIndex, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, InvalidDataFlag, COMMNTID, Comment_Note_Index, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP10210 WHERE RequisitionLineStatus BETWEEN @RequisitionLineStatus_RS AND @RequisitionLineStatus_RE AND POPRequisitionNumber BETWEEN @POPRequisitionNumber_RS AND @POPRequisitionNumber_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY RequisitionLineStatus DESC, POPRequisitionNumber DESC, ORD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10210L_2] TO [DYNGRP]
GO
