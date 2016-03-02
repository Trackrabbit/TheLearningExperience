SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35200SS_12] (@SOPNUMBE char(21), @SOP_Line_Item_Sequence int, @Return_Record_Type smallint, @RETDOCID char(15), @svcRMAComponentSeq int, @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  RETDOCID, Return_Record_Type, LNSEQNBR, SVC_Next_Line_SEQ_Number, SVC_Prev_Line_SEQ_Number, RETTYPE, RMA_Status, RETSTAT, Received, Traveler_Printed, SVC_Ready_To_Close, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, NOTEINDX, RETORIG, RETREF, SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, SVC_RMA_From_Service, SOPTYPE, SOPNUMBE, CMPNTSEQ, SOP_Line_Item_Sequence, ENTDTE, ENTTME, ETADTE, ETATME, Commit_Date, Commit_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, PRMDATE, REFRENCE, USERID, OFFID, LOCNCODE, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country, CUSTNMBR, CUSTNAME, ADRSCODE, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, Bill_To_Customer, SVC_Bill_To_Address_Code, CSTPONBR, QUANTITY, DECPLQTY, UOFM, ITEMNMBR, ITEMDESC, UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, CUSTOWN, FACTSEAL, ORDDOCID, TRANSLINESEQ, STATUS, Flat_Rate_Repair_Price, Orig_Flat_RepairPrice, Repair_Price, Originating_Repair_Price, NTE_Price, Originating_NTE_Price, Repair_Cost, Originating_Repair_Cost, Bill_of_Lading, SHIPMTHD, Credit_SOP_Type, Credit_SOP_Number, Credit_SOP_Line_Item_Seq, Replace_SOP_Type, Replace_SOP_Number, Replace_SOP_Line_Item_Se, Location_Code_Replacemen, Replace_Item_Number, Replace_U_Of_M, Replace_Price_Level, Replace_QTY, Replace_Cost, Originating_Replace_Cost, Replace_Price, Originating_Replace_Pric, SOP_Number_Invoice, Item_Number_Invoice, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURRNIDX, DECPLCUR, ODECPLCU, Return_Item_Number, Return_Item_Description, Return_Location_Code, Return_QTY, Return_U_Of_M, RETCOST, Originating_Return_Cost, SVC_Extended_Return_Cost, SVC_Orig_Ext_Return_Cost, SVC_Return_Price_Level, SVC_Return_Price, Originating_Return_Price, SVC_Extended_Return_Pric, SVC_Orig_Ext_Return_Pric, SVC_FO_ID, SVC_SCM_Complete, svcRMAKitComponentFrom, svcRMAComponentSeq, CMPITQTY, QTYONHND, QTYRTRND, QTYINUSE, QTYINSVC, QTYDMGED, DEX_ROW_ID FROM .SVC35200 WHERE SOPNUMBE = @SOPNUMBE AND SOP_Line_Item_Sequence = @SOP_Line_Item_Sequence AND Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND svcRMAComponentSeq = @svcRMAComponentSeq AND LNSEQNBR = @LNSEQNBR ORDER BY SOPNUMBE ASC, SOP_Line_Item_Sequence ASC, Return_Record_Type ASC, RETDOCID ASC, svcRMAComponentSeq ASC, LNSEQNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35200SS_12] TO [DYNGRP]
GO
