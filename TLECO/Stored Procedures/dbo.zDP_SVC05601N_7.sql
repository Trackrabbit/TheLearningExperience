SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05601N_7] (@BS int, @RTV_Number char(15), @VENDORID char(15), @ADRSCODE char(15), @RTV_Line numeric(19,5), @RTV_Number_RS char(15), @VENDORID_RS char(15), @ADRSCODE_RS char(15), @RTV_Line_RS numeric(19,5), @RTV_Number_RE char(15), @VENDORID_RE char(15), @ADRSCODE_RE char(15), @RTV_Line_RE numeric(19,5)) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, RTV_Type, RTV_Status, RTV_Return_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, DSCRIPTN, REFRENCE, Reference2, ITEMNMBR, ITEMDESC, ITMTRKOP, DECPLQTY, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, QTYCANCE, UOFM, VENDORID, VNDITNUM, Return_Item_Number, OFFID, LOCCODEB, LOCNCODE, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, PONMBRSTR, POLNSEQ, POPRCTNM, RCPTLNNM, Transfer_Reference, TRANSLINESEQ, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, Tracking_Number, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, QTYTYPE, DEX_ROW_ID FROM .SVC05601 WHERE ( RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE = @ADRSCODE AND RTV_Line > @RTV_Line OR RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE > @ADRSCODE OR RTV_Number = @RTV_Number AND VENDORID > @VENDORID OR RTV_Number > @RTV_Number ) ORDER BY RTV_Number ASC, VENDORID ASC, ADRSCODE ASC, RTV_Line ASC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, RTV_Type, RTV_Status, RTV_Return_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, DSCRIPTN, REFRENCE, Reference2, ITEMNMBR, ITEMDESC, ITMTRKOP, DECPLQTY, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, QTYCANCE, UOFM, VENDORID, VNDITNUM, Return_Item_Number, OFFID, LOCCODEB, LOCNCODE, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, PONMBRSTR, POLNSEQ, POPRCTNM, RCPTLNNM, Transfer_Reference, TRANSLINESEQ, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, Tracking_Number, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, QTYTYPE, DEX_ROW_ID FROM .SVC05601 WHERE RTV_Number = @RTV_Number_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND ( RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE = @ADRSCODE AND RTV_Line > @RTV_Line OR RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE > @ADRSCODE OR RTV_Number = @RTV_Number AND VENDORID > @VENDORID OR RTV_Number > @RTV_Number ) ORDER BY RTV_Number ASC, VENDORID ASC, ADRSCODE ASC, RTV_Line ASC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, RTV_Type, RTV_Status, RTV_Return_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, DSCRIPTN, REFRENCE, Reference2, ITEMNMBR, ITEMDESC, ITMTRKOP, DECPLQTY, QUANTITY, QTYSHPPD, QTY_To_Receive, QTYRECVD, QTYCANCE, UOFM, VENDORID, VNDITNUM, Return_Item_Number, OFFID, LOCCODEB, LOCNCODE, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, PONMBRSTR, POLNSEQ, POPRCTNM, RCPTLNNM, Transfer_Reference, TRANSLINESEQ, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, Tracking_Number, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, QTYTYPE, DEX_ROW_ID FROM .SVC05601 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND ( RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE = @ADRSCODE AND RTV_Line > @RTV_Line OR RTV_Number = @RTV_Number AND VENDORID = @VENDORID AND ADRSCODE > @ADRSCODE OR RTV_Number = @RTV_Number AND VENDORID > @VENDORID OR RTV_Number > @RTV_Number ) ORDER BY RTV_Number ASC, VENDORID ASC, ADRSCODE ASC, RTV_Line ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05601N_7] TO [DYNGRP]
GO
