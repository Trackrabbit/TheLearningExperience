SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[HistoryRTVs] AS select rtrim(['SVC_RTV_MSTR_HIST'].[RTV_Number]) as 'RTV Number', rtrim(['SVC_RTV_MSTR_HIST'].[RTV_Type]) as 'RTV Type', rtrim(['SVC_RTV_MSTR_HIST'].[RTV_Return_Status]) as 'RTV Return Status', rtrim(['SVC_RTV_MSTR_HIST'].[VRMA_Document_ID]) as 'VRMA Document ID', rtrim(['SVC_RTV_MSTR_HIST'].[RETDOCID]) as 'RMA Number', rtrim(['SVC_RTV_MSTR_HIST'].[VENDORID]) as 'Vendor ID', rtrim(['SVC_RTV_MSTR_HIST'].[VENDNAME]) as 'Vendor Name', rtrim(['SVC_RTV_MSTR_HIST'].[ADRSCODE]) as 'Address Code', ['SVC_RTV_MSTR_HIST'].[ENTDTE] as 'Entry Date', ['SVC_RTV_MSTR_HIST'].[Shipped_Date] as 'Shipped Date', ['SVC_RTV_MSTR_HIST'].[receiptdate] as 'Receipt Date', ['SVC_RTV_MSTR_HIST'].[COMPDTE] as 'Complete Date', rtrim(['SVC_RTV_MSTR_HIST'].[LOCNCODE]) as 'Location Code', ['SVC_RTV_MSTR_HIST'].[Travel_Price] as 'Travel Price', rtrim(['SVC_RTV_MSTR_HIST'].[Bill_of_Lading_Out]) as 'Bill of Landing (Out)', rtrim(['SVC_RTV_MSTR_HIST'].[Shipping_Method_Out]) as 'Shipping Method (Out)', 'Void Status' = dbo.DYN_FUNC_Void_Status(['SVC_RTV_MSTR_HIST'].[VOIDSTTS]),  rtrim(['SVC_RTV_MSTR_HIST'].[Bill_of_Lading]) as 'Bill of Landing', ['SVC_RTV_MSTR_HIST'].[COMPTME] as 'Complete Time', rtrim(['SVC_RTV_MSTR_HIST'].[CURNCYID]) as 'Currency ID', ['SVC_RTV_MSTR_HIST'].[CURRNIDX] as 'Currency Index', 'Customer Owned' = dbo.DYN_FUNC_Boolean_All(['SVC_RTV_MSTR_HIST'].[CUSTOWN]), 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['SVC_RTV_MSTR_HIST'].[DECPLACS]), ['SVC_RTV_MSTR_HIST'].[DENXRATE] as 'Denomination Exchange Rate', rtrim(['SVC_RTV_MSTR_HIST'].[DSCRIPTN]) as 'Description', ['SVC_RTV_MSTR_HIST'].[ENTTME] as 'Entry Time', ['SVC_RTV_MSTR_HIST'].[EXCHDATE] as 'Exchange Date', ['SVC_RTV_MSTR_HIST'].[XCHGRATE] as 'Exchange Rate', rtrim(['SVC_RTV_MSTR_HIST'].[EXGTBLID]) as 'Exchange Table ID', ['SVC_RTV_MSTR_HIST'].[Expense_Cost] as 'Expense Cost', ['SVC_RTV_MSTR_HIST'].[Expense_Price] as 'Expense Price', ['SVC_RTV_MSTR_HIST'].[EXPNDATE] as 'Expiration Date', ['SVC_RTV_MSTR_HIST'].[ISMCTRX] as 'IS MC Trx', ['SVC_RTV_MSTR_HIST'].[Labor_Cost] as 'Labor Cost', ['SVC_RTV_MSTR_HIST'].[Labor_Price] as 'Labor Price', ['SVC_RTV_MSTR_HIST'].[LNSEQNBR] as 'Line SEQ Number', rtrim(['SVC_RTV_MSTR_HIST'].[LOCCODEB]) as 'Location Code Bad', ['SVC_RTV_MSTR_HIST'].[MCTRXSTT] as 'MC Transaction State', ['SVC_RTV_MSTR_HIST'].[NOTEINDX] as 'Note Index', rtrim(['SVC_RTV_MSTR_HIST'].[OFFID]) as 'Office ID', ['SVC_RTV_MSTR_HIST'].[Originating_Expense_Cost] as 'Originating Expense Cost', ['SVC_RTV_MSTR_HIST'].[Originating_ExpensePrice] as 'Originating Expense Price', ['SVC_RTV_MSTR_HIST'].[Originating_Labor_Cost] as 'Originating Labor Cost', ['SVC_RTV_MSTR_HIST'].[Originating_Labor_Price] as 'Originating Labor Price', ['SVC_RTV_MSTR_HIST'].[Originating_Part_Cost] as 'Originating Part Cost', ['SVC_RTV_MSTR_HIST'].[Originating_Part_Price] as 'Originating Part Price', ['SVC_RTV_MSTR_HIST'].[Originating_Travel_Cost] as 'Originating Travel Cost', ['SVC_RTV_MSTR_HIST'].[Originating_Travel_Price] as 'Originating Travel Price', ['SVC_RTV_MSTR_HIST'].[Part_Cost] as 'Part Cost', ['SVC_RTV_MSTR_HIST'].[Part_Price] as 'Part Price', ['SVC_RTV_MSTR_HIST'].[PRMDATE] as 'Promised Date', ['SVC_RTV_MSTR_HIST'].[Promised_Time] as 'Promised Time', 'RTV Status' = dbo.FS_FUNC_RTV_Status(['SVC_RTV_MSTR_HIST'].[RTV_Status]), ['SVC_RTV_MSTR_HIST'].[RATECALC] as 'Rate Calc Method', rtrim(['SVC_RTV_MSTR_HIST'].[RATETPID]) as 'Rate Type ID', ['SVC_RTV_MSTR_HIST'].[Receipt_Time] as 'Receipt Time', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_Address_1]) as 'Ship Address 1', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_Address_2]) as 'Ship Address 2', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_Address_3]) as 'Ship Address 3', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_Address_Name]) as 'Ship Address Name', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_City]) as 'Ship City', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_Country]) as 'Ship Country', rtrim(['SVC_RTV_MSTR_HIST'].[Ship_State]) as 'Ship State', ['SVC_RTV_MSTR_HIST'].[Shipped_Time] as 'Shipped Time', rtrim(['SVC_RTV_MSTR_HIST'].[SHIPMTHD]) as 'Shipping Method', ['SVC_RTV_MSTR_HIST'].[TIME1] as 'Time', ['SVC_RTV_MSTR_HIST'].[Travel_Cost] as 'Travel Cost', rtrim(['SVC_RTV_MSTR_HIST'].[USERDEF1]) as 'User Defined 1', rtrim(['SVC_RTV_MSTR_HIST'].[USERDEF2]) as 'User Defined 2', rtrim(['SVC_RTV_MSTR_HIST'].[USRDEF03]) as 'User Defined 3', rtrim(['SVC_RTV_MSTR_HIST'].[USRDEF04]) as 'User Defined 4', rtrim(['SVC_RTV_MSTR_HIST'].[USRDEF05]) as 'User Defined 5', rtrim(['SVC_RTV_MSTR_HIST'].[USERID]) as 'User ID', ['SVC_RTV_MSTR_HIST'].[VIEWMODE] as 'View Mode', rtrim(['SVC_RTV_MSTR_HIST'].[Voucher_Number_Invoice]) as 'Voucher Number Invoice', rtrim(['SVC_RTV_MSTR_HIST'].[Voucher_Number_Reimburse]) as 'Voucher Number Reimbursement', rtrim(['SVC_RTV_MSTR_HIST'].[VCHNUMWK]) as 'Voucher Number (WORK)', rtrim(['SVC_RTV_MSTR_HIST'].[ZIPCODE]) as 'Zip Code',  'RTV Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppRTVNumber(1,['SVC_RTV_MSTR_HIST'].[RTV_Number],['SVC_RTV_MSTR_HIST'].[RTV_Type] ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['SVC_RTV_MSTR_HIST'].[VENDORID] )          from [SVC35600] as ['SVC_RTV_MSTR_HIST'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[HistoryRTVs] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HistoryRTVs] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HistoryRTVs] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HistoryRTVs] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[HistoryRTVs] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[HistoryRTVs] TO [rpt_executive]
GO
