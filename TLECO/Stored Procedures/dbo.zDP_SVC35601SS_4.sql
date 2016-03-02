SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35601SS_4] (@RTV_Number char(15), @RTV_Status smallint, @RTV_Line numeric(19,5)) AS  set nocount on SELECT TOP 1  RTV_Number, RTV_Line, RTV_Type, RTV_Status, RTV_Return_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, DSCRIPTN, REFRENCE, Reference2, ITEMNMBR, ITEMDESC, ITMTRKOP, DECPLQTY, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, QTYCANCE, UOFM, VENDORID, VNDITNUM, Return_Item_Number, OFFID, LOCCODEB, LOCNCODE, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, PONMBRSTR, POLNSEQ, POPRCTNM, RCPTLNNM, Transfer_Reference, TRANSLINESEQ, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, Tracking_Number, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, QTYTYPE, DEX_ROW_ID FROM .SVC35601 WHERE RTV_Number = @RTV_Number AND RTV_Status = @RTV_Status AND RTV_Line = @RTV_Line ORDER BY RTV_Number ASC, RTV_Status ASC, RTV_Line ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35601SS_4] TO [DYNGRP]
GO
