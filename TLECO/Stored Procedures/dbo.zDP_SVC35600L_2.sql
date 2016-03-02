SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35600L_2] (@RTV_Return_Status_RS char(3), @RTV_Number_RS char(15), @RTV_Return_Status_RE char(3), @RTV_Number_RE char(15)) AS  set nocount on IF @RTV_Return_Status_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Type, RTV_Return_Status, RTV_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, DSCRIPTN, VENDORID, VENDNAME, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, LOCCODEB, LOCNCODE, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, OFFID, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERID, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, VOIDSTTS, DEX_ROW_ID FROM .SVC35600 ORDER BY RTV_Return_Status DESC, RTV_Number DESC END ELSE IF @RTV_Return_Status_RS = @RTV_Return_Status_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Type, RTV_Return_Status, RTV_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, DSCRIPTN, VENDORID, VENDNAME, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, LOCCODEB, LOCNCODE, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, OFFID, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERID, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, VOIDSTTS, DEX_ROW_ID FROM .SVC35600 WHERE RTV_Return_Status = @RTV_Return_Status_RS AND RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE ORDER BY RTV_Return_Status DESC, RTV_Number DESC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Type, RTV_Return_Status, RTV_Status, VRMA_Document_ID, RETDOCID, LNSEQNBR, DSCRIPTN, VENDORID, VENDNAME, ADRSCODE, Ship_Address_Name, Ship_Address_1, Ship_Address_2, Ship_Address_3, Ship_City, Ship_State, ZIPCODE, Ship_Country, ENTDTE, ENTTME, PRMDATE, Promised_Time, Shipped_Date, Shipped_Time, receiptdate, Receipt_Time, COMPDTE, COMPTME, LOCCODEB, LOCNCODE, Part_Price, Part_Cost, Labor_Price, Labor_Cost, Expense_Price, Expense_Cost, Travel_Price, Travel_Cost, Bill_of_Lading_Out, Shipping_Method_Out, Bill_of_Lading, SHIPMTHD, OFFID, NOTEINDX, VCHNUMWK, Voucher_Number_Invoice, Voucher_Number_Reimburse, CUSTOWN, USERID, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, Originating_Part_Price, Originating_Part_Cost, Originating_Labor_Price, Originating_Labor_Cost, Originating_ExpensePrice, Originating_Expense_Cost, Originating_Travel_Price, Originating_Travel_Cost, VOIDSTTS, DEX_ROW_ID FROM .SVC35600 WHERE RTV_Return_Status BETWEEN @RTV_Return_Status_RS AND @RTV_Return_Status_RE AND RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE ORDER BY RTV_Return_Status DESC, RTV_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35600L_2] TO [DYNGRP]
GO
