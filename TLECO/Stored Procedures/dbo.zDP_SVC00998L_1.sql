SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00998L_1] (@SEQUENCE1_RS numeric(19,5), @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @SEQUENCE1_RS IS NULL BEGIN SELECT TOP 25  SEQUENCE1, SRVRECTYPE, MULEQUIP, MULCODES, MULTECH, TIMEZONE, SRVTYPE, OFFID, LOCNCODE, SRVSTAT, Backorder_Status, Intransit_Status, Dispatch_Status, Arrival_Status, Complete_Status, POSTAT, Single_PO, SRLSTAT, RETSTATUS, CKSVCAREA, CKSKILL, CONSTS, PRICSHED, CNTTYPE, MAPPRLOC, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, NUMDAYSOD, NUMDAYSPM, NUMDAYSCB, CHGHIST, AUTOCUST, CUSTNMBR, RETCSTNR, PAGEON, PAGEPROFILE, PRCLEVEL, Use_SOP, Password_Array_1, Password_Array_2, Password_Array_3, Password_Array_4, Password_Array_5, Password_Array_6, Password_Array_7, Check_Customer, Check_Customer_Address, Check_Serial, EMail_Tech, Use_POP, Print_to_Web, Check_Call_Back, Retainage_Percent, RETTYPE, RTV_Type, SVC_PO_Validation, Location_Code_Vendor, WORECTYPE, WO_Office_ID, WO_TimeZone, WOENTSTA, WOBOSTAT, WOCOMPSTAT, WOWIPSTAT, WOTYPE, WOLOCAT, Parts_Available_Status, SVC_Address_Option, SVC_Disable_XFR_Grouping, Ready_To_Invoice_Status, Invoiced_Status, SVC_Auto_Create_Labor, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, SVC_User_Define_Prompt1, SVC_User_Define_Prompt2, SVC_User_Define_Prompt3, SVC_User_Define_Prompt4, SVC_User_Define_Prompt5, SVC_User_Define_Prompt6, SVC_User_Define_Prompt7, SVC_User_Define_Prompt8, SVC_User_Define_Prompt9, SVC_User_Define_Prompt10, SVC_User_Define_Prompt11, SVC_User_Define_Prompt12, SVC_User_Define_Prompt13, SVC_User_Define_Prompt14, SVC_User_Define_Prompt15, SVC_Check_SC_Labor, SVC_Check_WO_Labor, SVC_Check_Call_Back, SVC_Service_Type, SVC_Directory, SVC_Return_Price_Level, SVC_Transfer_Option, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, SVC_Use_Return, SVC_Dup_Serial, SVC_Auto_SOP_Contract, SVC_Contract_Warranty, SVC_Create_Serial, SVC_Vendor_Warranty_Flag, SVC_Seller_Warranty_Flag, SVC_Create_POP_Serial, SVC_ItemDelta, SVC_Allow_Contract_0_SOP, SVC_Allow_Service_0_SOP, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Auto_Credit_Receipt, SVC_Auto_Replace_Receipt, SVC_RMA_Invoice_Batch_ID, SVC_RMA_Credit_Batch_ID, SVC_RMA_Order_Batch_ID, Call_To, Call_From, priorityLevel, SVC_User_Define_Prompt16, SVC_User_Define_Prompt17, SVC_User_Define_Prompt18, SVC_User_Define_Prompt19, SVC_User_Define_Prompt20, SVC_Auto_XShip_Receipt, SVC_Use_Payable, SVC_PrePaid_Override, SVC_DistHistory_Contract, SVC_DistHistory_RMA, SVC_DistHistory_RTV, SVC_DistHistory_Service, SVC_DistHistory_Transfer, SVC_DistHistory_Work_Ord, SVC_Use_Same_Number, SVC_InStock_Customer, SVC_InStock_Status, SVC_Create_Non_Serial_Eq, SVC_Allow_RMA_0_SOP, SVC_Use_Return_Price_Lev, SVC_Supersession_Enabled, AUTOREN, SVC_Days_to_Renew, MXINCPCT, PCTCRYFWD, SVC_Remove_Price_Overrid, RENPRCSCHD, CNSOLDTD, svcDonotCombinePM, svcContractPMOnly, svcAutoMoveHistory, svcAllowNonInventoried, svcUsePayRate, svcUsePayroll, svcDefaultWorkType_1, svcDefaultWorkType_2, svcDefaultWorkType_3, svcDefaultWorkType_4, svcDefaultWorkType_5, svcBillingExchangeRate, svcRevenueExchangeRate, svcConsolidateSOPOrder, svcCreateMAEquipment, svcCreateMANonSerialEq, DEX_ROW_ID FROM .SVC00998 ORDER BY SEQUENCE1 DESC END ELSE IF @SEQUENCE1_RS = @SEQUENCE1_RE BEGIN SELECT TOP 25  SEQUENCE1, SRVRECTYPE, MULEQUIP, MULCODES, MULTECH, TIMEZONE, SRVTYPE, OFFID, LOCNCODE, SRVSTAT, Backorder_Status, Intransit_Status, Dispatch_Status, Arrival_Status, Complete_Status, POSTAT, Single_PO, SRLSTAT, RETSTATUS, CKSVCAREA, CKSKILL, CONSTS, PRICSHED, CNTTYPE, MAPPRLOC, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, NUMDAYSOD, NUMDAYSPM, NUMDAYSCB, CHGHIST, AUTOCUST, CUSTNMBR, RETCSTNR, PAGEON, PAGEPROFILE, PRCLEVEL, Use_SOP, Password_Array_1, Password_Array_2, Password_Array_3, Password_Array_4, Password_Array_5, Password_Array_6, Password_Array_7, Check_Customer, Check_Customer_Address, Check_Serial, EMail_Tech, Use_POP, Print_to_Web, Check_Call_Back, Retainage_Percent, RETTYPE, RTV_Type, SVC_PO_Validation, Location_Code_Vendor, WORECTYPE, WO_Office_ID, WO_TimeZone, WOENTSTA, WOBOSTAT, WOCOMPSTAT, WOWIPSTAT, WOTYPE, WOLOCAT, Parts_Available_Status, SVC_Address_Option, SVC_Disable_XFR_Grouping, Ready_To_Invoice_Status, Invoiced_Status, SVC_Auto_Create_Labor, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, SVC_User_Define_Prompt1, SVC_User_Define_Prompt2, SVC_User_Define_Prompt3, SVC_User_Define_Prompt4, SVC_User_Define_Prompt5, SVC_User_Define_Prompt6, SVC_User_Define_Prompt7, SVC_User_Define_Prompt8, SVC_User_Define_Prompt9, SVC_User_Define_Prompt10, SVC_User_Define_Prompt11, SVC_User_Define_Prompt12, SVC_User_Define_Prompt13, SVC_User_Define_Prompt14, SVC_User_Define_Prompt15, SVC_Check_SC_Labor, SVC_Check_WO_Labor, SVC_Check_Call_Back, SVC_Service_Type, SVC_Directory, SVC_Return_Price_Level, SVC_Transfer_Option, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, SVC_Use_Return, SVC_Dup_Serial, SVC_Auto_SOP_Contract, SVC_Contract_Warranty, SVC_Create_Serial, SVC_Vendor_Warranty_Flag, SVC_Seller_Warranty_Flag, SVC_Create_POP_Serial, SVC_ItemDelta, SVC_Allow_Contract_0_SOP, SVC_Allow_Service_0_SOP, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Auto_Credit_Receipt, SVC_Auto_Replace_Receipt, SVC_RMA_Invoice_Batch_ID, SVC_RMA_Credit_Batch_ID, SVC_RMA_Order_Batch_ID, Call_To, Call_From, priorityLevel, SVC_User_Define_Prompt16, SVC_User_Define_Prompt17, SVC_User_Define_Prompt18, SVC_User_Define_Prompt19, SVC_User_Define_Prompt20, SVC_Auto_XShip_Receipt, SVC_Use_Payable, SVC_PrePaid_Override, SVC_DistHistory_Contract, SVC_DistHistory_RMA, SVC_DistHistory_RTV, SVC_DistHistory_Service, SVC_DistHistory_Transfer, SVC_DistHistory_Work_Ord, SVC_Use_Same_Number, SVC_InStock_Customer, SVC_InStock_Status, SVC_Create_Non_Serial_Eq, SVC_Allow_RMA_0_SOP, SVC_Use_Return_Price_Lev, SVC_Supersession_Enabled, AUTOREN, SVC_Days_to_Renew, MXINCPCT, PCTCRYFWD, SVC_Remove_Price_Overrid, RENPRCSCHD, CNSOLDTD, svcDonotCombinePM, svcContractPMOnly, svcAutoMoveHistory, svcAllowNonInventoried, svcUsePayRate, svcUsePayroll, svcDefaultWorkType_1, svcDefaultWorkType_2, svcDefaultWorkType_3, svcDefaultWorkType_4, svcDefaultWorkType_5, svcBillingExchangeRate, svcRevenueExchangeRate, svcConsolidateSOPOrder, svcCreateMAEquipment, svcCreateMANonSerialEq, DEX_ROW_ID FROM .SVC00998 WHERE SEQUENCE1 = @SEQUENCE1_RS ORDER BY SEQUENCE1 DESC END ELSE BEGIN SELECT TOP 25  SEQUENCE1, SRVRECTYPE, MULEQUIP, MULCODES, MULTECH, TIMEZONE, SRVTYPE, OFFID, LOCNCODE, SRVSTAT, Backorder_Status, Intransit_Status, Dispatch_Status, Arrival_Status, Complete_Status, POSTAT, Single_PO, SRLSTAT, RETSTATUS, CKSVCAREA, CKSKILL, CONSTS, PRICSHED, CNTTYPE, MAPPRLOC, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, NUMDAYSOD, NUMDAYSPM, NUMDAYSCB, CHGHIST, AUTOCUST, CUSTNMBR, RETCSTNR, PAGEON, PAGEPROFILE, PRCLEVEL, Use_SOP, Password_Array_1, Password_Array_2, Password_Array_3, Password_Array_4, Password_Array_5, Password_Array_6, Password_Array_7, Check_Customer, Check_Customer_Address, Check_Serial, EMail_Tech, Use_POP, Print_to_Web, Check_Call_Back, Retainage_Percent, RETTYPE, RTV_Type, SVC_PO_Validation, Location_Code_Vendor, WORECTYPE, WO_Office_ID, WO_TimeZone, WOENTSTA, WOBOSTAT, WOCOMPSTAT, WOWIPSTAT, WOTYPE, WOLOCAT, Parts_Available_Status, SVC_Address_Option, SVC_Disable_XFR_Grouping, Ready_To_Invoice_Status, Invoiced_Status, SVC_Auto_Create_Labor, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, SVC_User_Define_Prompt1, SVC_User_Define_Prompt2, SVC_User_Define_Prompt3, SVC_User_Define_Prompt4, SVC_User_Define_Prompt5, SVC_User_Define_Prompt6, SVC_User_Define_Prompt7, SVC_User_Define_Prompt8, SVC_User_Define_Prompt9, SVC_User_Define_Prompt10, SVC_User_Define_Prompt11, SVC_User_Define_Prompt12, SVC_User_Define_Prompt13, SVC_User_Define_Prompt14, SVC_User_Define_Prompt15, SVC_Check_SC_Labor, SVC_Check_WO_Labor, SVC_Check_Call_Back, SVC_Service_Type, SVC_Directory, SVC_Return_Price_Level, SVC_Transfer_Option, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, SVC_Use_Return, SVC_Dup_Serial, SVC_Auto_SOP_Contract, SVC_Contract_Warranty, SVC_Create_Serial, SVC_Vendor_Warranty_Flag, SVC_Seller_Warranty_Flag, SVC_Create_POP_Serial, SVC_ItemDelta, SVC_Allow_Contract_0_SOP, SVC_Allow_Service_0_SOP, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Auto_Credit_Receipt, SVC_Auto_Replace_Receipt, SVC_RMA_Invoice_Batch_ID, SVC_RMA_Credit_Batch_ID, SVC_RMA_Order_Batch_ID, Call_To, Call_From, priorityLevel, SVC_User_Define_Prompt16, SVC_User_Define_Prompt17, SVC_User_Define_Prompt18, SVC_User_Define_Prompt19, SVC_User_Define_Prompt20, SVC_Auto_XShip_Receipt, SVC_Use_Payable, SVC_PrePaid_Override, SVC_DistHistory_Contract, SVC_DistHistory_RMA, SVC_DistHistory_RTV, SVC_DistHistory_Service, SVC_DistHistory_Transfer, SVC_DistHistory_Work_Ord, SVC_Use_Same_Number, SVC_InStock_Customer, SVC_InStock_Status, SVC_Create_Non_Serial_Eq, SVC_Allow_RMA_0_SOP, SVC_Use_Return_Price_Lev, SVC_Supersession_Enabled, AUTOREN, SVC_Days_to_Renew, MXINCPCT, PCTCRYFWD, SVC_Remove_Price_Overrid, RENPRCSCHD, CNSOLDTD, svcDonotCombinePM, svcContractPMOnly, svcAutoMoveHistory, svcAllowNonInventoried, svcUsePayRate, svcUsePayroll, svcDefaultWorkType_1, svcDefaultWorkType_2, svcDefaultWorkType_3, svcDefaultWorkType_4, svcDefaultWorkType_5, svcBillingExchangeRate, svcRevenueExchangeRate, svcConsolidateSOPOrder, svcCreateMAEquipment, svcCreateMANonSerialEq, DEX_ROW_ID FROM .SVC00998 WHERE SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY SEQUENCE1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00998L_1] TO [DYNGRP]
GO
