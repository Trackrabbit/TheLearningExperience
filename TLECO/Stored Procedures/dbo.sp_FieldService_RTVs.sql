SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_FieldService_RTVs] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @RTV_Number varchar(255), @RTV_Type varchar(255), @RTV_Return_Status varchar(255), @RTV_Status varchar(255), @VRMA_Document_ID varchar(255), @RMA_Number varchar(255), @Line_SEQ_Number varchar(255), @Description varchar(255), @Vendor_ID varchar(255), @Vendor_Name varchar(255), @Address_Code varchar(255), @Ship_Address_Name varchar(255), @Ship_Address_1 varchar(255), @Ship_Address_2 varchar(255), @Ship_Address_3 varchar(255), @Ship_City varchar(255), @Ship_State varchar(255), @Zip_Code varchar(255), @Ship_Country varchar(255), @Entry_Date varchar(255), @Entry_Time varchar(255), @Promised_Date varchar(255), @Promised_Time varchar(255), @Shipped_Date varchar(255), @Shipped_Time varchar(255), @Receipt_Date varchar(255), @Receipt_Time varchar(255), @Complete_Date varchar(255), @Complete_Time varchar(255), @Location_Code_Bad varchar(255), @Location_Code varchar(255), @Part_Price varchar(255), @Part_Cost varchar(255), @Labor_Price varchar(255), @Labor_Cost varchar(255), @Expense_Price varchar(255), @Expense_Cost varchar(255), @Travel_Price varchar(255), @Travel_Cost varchar(255), @Bill_of_Landing__Out_ varchar(255), @Shipping_Method__Out_ varchar(255), @Bill_of_Landing varchar(255), @Shipping_Method varchar(255), @Office_ID varchar(255), @Note_Index varchar(255), @Voucher_Number__WORK_ varchar(255), @Voucher_Number_Invoice varchar(255), @Voucher_Number_Reimbursement varchar(255), @Customer_Owned varchar(255), @User_ID varchar(255), @User_Defined_1 varchar(255), @User_Defined_2 varchar(255), @User_Defined_3 varchar(255), @User_Defined_4 varchar(255), @User_Defined_5 varchar(255), @Currency_ID varchar(255), @Currency_Index varchar(255), @Rate_Type_ID varchar(255), @Exchange_Table_ID varchar(255), @Exchange_Rate varchar(255), @Exchange_Date varchar(255), @Decimal_Places varchar(255), @Time varchar(255), @Rate_Calc_Method varchar(255), @View_Mode varchar(255), @IS_MC_Trx varchar(255), @Expiration_Date varchar(255), @Denomination_Exchange_Rate varchar(255), @MC_Transaction_State varchar(255), @Originating_Part_Price varchar(255), @Originating_Part_Cost varchar(255), @Originating_Labor_Price varchar(255), @Originating_Labor_Cost varchar(255), @Originating_Expense_Price varchar(255), @Originating_Expense_Cost varchar(255), @Originating_Travel_Price varchar(255), @Originating_Travel_Cost varchar(255), @Void_Status varchar(255),  @DrillBack_Base_Url varchar(255), @DrillBack_Base_Url_For_FS varchar(255), @RTV_Number_For_DrillBack varchar(255), @Vendor_ID_For_DrillBack varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) select @DrillBack_Base_Url_For_FS = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),949)  select @I_iDictID = 949 select @I_iMessageNumber = 27000 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 27001 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Type output  select @I_iDictID = 949 select @I_iMessageNumber = 27002 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Return_Status output  select @I_iDictID = 949 select @I_iMessageNumber = 27003 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Status output  select @I_iDictID = 949 select @I_iMessageNumber = 27004 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @VRMA_Document_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27005 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RMA_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 27006 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Line_SEQ_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 27007 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Description output  select @I_iDictID = 949 select @I_iMessageNumber = 27008 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Vendor_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27009 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Vendor_Name output  select @I_iDictID = 949 select @I_iMessageNumber = 27010 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 27011 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_Address_Name output  select @I_iDictID = 949 select @I_iMessageNumber = 27012 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_Address_1 output  select @I_iDictID = 949 select @I_iMessageNumber = 27013 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_Address_2 output  select @I_iDictID = 949 select @I_iMessageNumber = 27014 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_Address_3 output  select @I_iDictID = 949 select @I_iMessageNumber = 27015 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_City output  select @I_iDictID = 949 select @I_iMessageNumber = 27016 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_State output  select @I_iDictID = 949 select @I_iMessageNumber = 27017 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Zip_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 27018 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Ship_Country output  select @I_iDictID = 949 select @I_iMessageNumber = 27019 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Entry_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27020 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Entry_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27021 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Promised_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27022 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Promised_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27023 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Shipped_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27024 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Shipped_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27025 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Receipt_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27026 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Receipt_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27027 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Complete_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27028 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Complete_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27029 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Location_Code_Bad output  select @I_iDictID = 949 select @I_iMessageNumber = 27030 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Location_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 27031 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Part_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27032 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Part_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27033 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Labor_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27034 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Labor_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27035 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Expense_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27036 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Expense_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27037 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Travel_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27038 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Travel_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27039 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Bill_of_Landing__Out_ output  select @I_iDictID = 949 select @I_iMessageNumber = 27040 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Shipping_Method__Out_ output  select @I_iDictID = 949 select @I_iMessageNumber = 27041 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Bill_of_Landing output  select @I_iDictID = 949 select @I_iMessageNumber = 27042 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Shipping_Method output  select @I_iDictID = 949 select @I_iMessageNumber = 27043 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Office_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27044 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Note_Index output  select @I_iDictID = 949 select @I_iMessageNumber = 27045 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Voucher_Number__WORK_ output  select @I_iDictID = 949 select @I_iMessageNumber = 27046 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Voucher_Number_Invoice output  select @I_iDictID = 949 select @I_iMessageNumber = 27047 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Voucher_Number_Reimbursement output  select @I_iDictID = 949 select @I_iMessageNumber = 27048 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_Owned output  select @I_iDictID = 949 select @I_iMessageNumber = 27049 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27050 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_1 output  select @I_iDictID = 949 select @I_iMessageNumber = 27051 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_2 output  select @I_iDictID = 949 select @I_iMessageNumber = 27052 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_3 output  select @I_iDictID = 949 select @I_iMessageNumber = 27053 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_4 output  select @I_iDictID = 949 select @I_iMessageNumber = 27054 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_5 output  select @I_iDictID = 949 select @I_iMessageNumber = 27055 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27056 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_Index output  select @I_iDictID = 949 select @I_iMessageNumber = 27057 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Rate_Type_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27058 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Table_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 27059 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Rate output  select @I_iDictID = 949 select @I_iMessageNumber = 27060 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27061 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Decimal_Places output  select @I_iDictID = 949 select @I_iMessageNumber = 27062 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Time output  select @I_iDictID = 949 select @I_iMessageNumber = 27063 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Rate_Calc_Method output  select @I_iDictID = 949 select @I_iMessageNumber = 27064 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @View_Mode output  select @I_iDictID = 949 select @I_iMessageNumber = 27065 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @IS_MC_Trx output  select @I_iDictID = 949 select @I_iMessageNumber = 27066 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Expiration_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 27067 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Denomination_Exchange_Rate output  select @I_iDictID = 949 select @I_iMessageNumber = 27068 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @MC_Transaction_State output  select @I_iDictID = 949 select @I_iMessageNumber = 27069 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Part_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27070 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Part_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27071 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Labor_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27072 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Labor_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27073 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Expense_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27074 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Expense_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27075 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Travel_Price output  select @I_iDictID = 949 select @I_iMessageNumber = 27076 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Travel_Cost output  select @I_iDictID = 949 select @I_iMessageNumber = 27077 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Void_Status output   select @I_iDictID = 949 select @I_iMessageNumber = 27008 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Vendor_ID_For_DrillBack output   select @I_iDictID = 949 select @I_iMessageNumber = 27000 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Number_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[RTVs]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[RTVs] '  select @sqldefaultstring =   'CREATE VIEW RTVs AS ' +   'select ' +   'rtrim([''SVC_RTV_MSTR''].[RTV_Number]) as ''' + @RTV_Number + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[RTV_Type]) as ''' + @RTV_Type + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[RTV_Return_Status]) as ''' + @RTV_Return_Status + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[VRMA_Document_ID]) as ''' + @VRMA_Document_ID + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[RETDOCID]) as ''' + @RMA_Number + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[VENDORID]) as ''' + @Vendor_ID + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[VENDNAME]) as ''' + @Vendor_Name + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[ADRSCODE]) as ''' + @Address_Code + ''', ' + '[''SVC_RTV_MSTR''].[ENTDTE] as ''' + @Entry_Date + ''', ' + '[''SVC_RTV_MSTR''].[Shipped_Date] as ''' + @Shipped_Date + ''', ' + '[''SVC_RTV_MSTR''].[receiptdate] as ''' + @Receipt_Date + ''', ' + '[''SVC_RTV_MSTR''].[COMPDTE] as ''' + @Complete_Date + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[LOCNCODE]) as ''' + @Location_Code + ''', ' + '[''SVC_RTV_MSTR''].[Travel_Price] as ''' + @Travel_Price + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[Bill_of_Lading_Out]) as ''' + @Bill_of_Landing__Out_ + ''', ' + 'rtrim([''SVC_RTV_MSTR''].[Shipping_Method_Out]) as ''' + @Shipping_Method__Out_ + ''', ' + '''' + @Void_Status + ''' = dbo.DYN_FUNC_Void_Status([''SVC_RTV_MSTR''].[VOIDSTTS]), '   select @sqlstring1 =   'rtrim([''SVC_RTV_MSTR''].[Bill_of_Lading]) as ''' + @Bill_of_Landing + ''', ' +  '[''SVC_RTV_MSTR''].[COMPTME] as ''' + @Complete_Time + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[CURNCYID]) as ''' + @Currency_ID + ''', ' +  '[''SVC_RTV_MSTR''].[CURRNIDX] as ''' + @Currency_Index + ''', ' +  '''' + @Customer_Owned + ''' = dbo.DYN_FUNC_Boolean_All([''SVC_RTV_MSTR''].[CUSTOWN]), ' +  '''' + @Decimal_Places + ''' = dbo.DYN_FUNC_Decimal_Places_QTYS([''SVC_RTV_MSTR''].[DECPLACS]), ' +  '[''SVC_RTV_MSTR''].[DENXRATE] as ''' + @Denomination_Exchange_Rate + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[DSCRIPTN]) as ''' + @Description + ''', ' +  '[''SVC_RTV_MSTR''].[ENTTME] as ''' + @Entry_Time + ''', ' +  '[''SVC_RTV_MSTR''].[EXCHDATE] as ''' + @Exchange_Date + ''', ' +  '[''SVC_RTV_MSTR''].[XCHGRATE] as ''' + @Exchange_Rate + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[EXGTBLID]) as ''' + @Exchange_Table_ID + ''', ' +  '[''SVC_RTV_MSTR''].[Expense_Cost] as ''' + @Expense_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Expense_Price] as ''' + @Expense_Price + ''', ' +  '[''SVC_RTV_MSTR''].[EXPNDATE] as ''' + @Expiration_Date + ''', ' +  '[''SVC_RTV_MSTR''].[ISMCTRX] as ''' + @IS_MC_Trx + ''', ' +  '[''SVC_RTV_MSTR''].[Labor_Cost] as ''' + @Labor_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Labor_Price] as ''' + @Labor_Price + ''', ' +  '[''SVC_RTV_MSTR''].[LNSEQNBR] as ''' + @Line_SEQ_Number + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[LOCCODEB]) as ''' + @Location_Code_Bad + ''', ' +  '[''SVC_RTV_MSTR''].[MCTRXSTT] as ''' + @MC_Transaction_State + ''', ' +  '[''SVC_RTV_MSTR''].[NOTEINDX] as ''' + @Note_Index + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[OFFID]) as ''' + @Office_ID + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Expense_Cost] as ''' + @Originating_Expense_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_ExpensePrice] as ''' + @Originating_Expense_Price + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Labor_Cost] as ''' + @Originating_Labor_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Labor_Price] as ''' + @Originating_Labor_Price + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Part_Cost] as ''' + @Originating_Part_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Part_Price] as ''' + @Originating_Part_Price + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Travel_Cost] as ''' + @Originating_Travel_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Originating_Travel_Price] as ''' + @Originating_Travel_Price + ''', ' +  '[''SVC_RTV_MSTR''].[Part_Cost] as ''' + @Part_Cost + ''', ' +  '[''SVC_RTV_MSTR''].[Part_Price] as ''' + @Part_Price + ''', ' +  '[''SVC_RTV_MSTR''].[PRMDATE] as ''' + @Promised_Date + ''', ' +  '[''SVC_RTV_MSTR''].[Promised_Time] as ''' + @Promised_Time + ''', ' +  '''' + @RTV_Status + ''' = dbo.FS_FUNC_RTV_Status([''SVC_RTV_MSTR''].[RTV_Status]), ' +  '[''SVC_RTV_MSTR''].[RATECALC] as ''' + @Rate_Calc_Method + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[RATETPID]) as ''' + @Rate_Type_ID + ''', ' +  '[''SVC_RTV_MSTR''].[Receipt_Time] as ''' + @Receipt_Time + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_Address_1]) as ''' + @Ship_Address_1 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_Address_2]) as ''' + @Ship_Address_2 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_Address_3]) as ''' + @Ship_Address_3 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_Address_Name]) as ''' + @Ship_Address_Name + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_City]) as ''' + @Ship_City + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_Country]) as ''' + @Ship_Country + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Ship_State]) as ''' + @Ship_State + ''', ' +  '[''SVC_RTV_MSTR''].[Shipped_Time] as ''' + @Shipped_Time + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[SHIPMTHD]) as ''' + @Shipping_Method + ''', ' +  '[''SVC_RTV_MSTR''].[TIME1] as ''' + @Time + ''', ' +  '[''SVC_RTV_MSTR''].[Travel_Cost] as ''' + @Travel_Cost + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USERDEF1]) as ''' + @User_Defined_1 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USERDEF2]) as ''' + @User_Defined_2 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USRDEF03]) as ''' + @User_Defined_3 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USRDEF04]) as ''' + @User_Defined_4 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USRDEF05]) as ''' + @User_Defined_5 + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[USERID]) as ''' + @User_ID + ''', ' +  '[''SVC_RTV_MSTR''].[VIEWMODE] as ''' + @View_Mode + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Voucher_Number_Invoice]) as ''' + @Voucher_Number_Invoice + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[Voucher_Number_Reimburse]) as ''' + @Voucher_Number_Reimbursement + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[VCHNUMWK]) as ''' + @Voucher_Number__WORK_ + ''', ' +  'rtrim([''SVC_RTV_MSTR''].[ZIPCODE]) as ''' + @Zip_Code + ''', '   select @sqlstring2 =  '''' + @RTV_Number_For_DrillBack + ''' = ''' + @DrillBack_Base_Url_For_FS + ''' +dbo.dgppRTVNumber(1,[''SVC_RTV_MSTR''].[RTV_Number],[''SVC_RTV_MSTR''].[RTV_Type] ), '+ '''' + @Vendor_ID_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppVendorID(1,[''SVC_RTV_MSTR''].[VENDORID] ) '  select @sqljoinstring =   'from [SVC05600] as [''SVC_RTV_MSTR''] with (NOLOCK) '   select @sqlaccessstring =   'GRANT SELECT ON [dbo].[RTVs] TO [rpt_customer service rep]' + 'GRANT SELECT ON [dbo].[RTVs] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[RTVs] TO [rpt_dispatcher]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_FieldService_RTVs] TO [DYNGRP]
GO
