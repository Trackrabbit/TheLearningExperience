CREATE TABLE [dbo].[SVC00998]
(
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[MULEQUIP] [tinyint] NOT NULL,
[MULCODES] [tinyint] NOT NULL,
[MULTECH] [tinyint] NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Backorder_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Intransit_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dispatch_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Arrival_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Complete_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Single_PO] [tinyint] NOT NULL,
[SRLSTAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETSTATUS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CKSVCAREA] [tinyint] NOT NULL,
[CKSKILL] [tinyint] NOT NULL,
[CONSTS] [smallint] NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MAPPRLOC] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMDAYSOD] [smallint] NOT NULL,
[NUMDAYSPM] [smallint] NOT NULL,
[NUMDAYSCB] [smallint] NOT NULL,
[CHGHIST] [tinyint] NOT NULL,
[AUTOCUST] [tinyint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETCSTNR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAGEON] [tinyint] NOT NULL,
[PAGEPROFILE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Use_SOP] [tinyint] NOT NULL,
[Password_Array_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_Array_7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Check_Customer] [tinyint] NOT NULL,
[Check_Customer_Address] [tinyint] NOT NULL,
[Check_Serial] [tinyint] NOT NULL,
[EMail_Tech] [tinyint] NOT NULL,
[Use_POP] [smallint] NOT NULL,
[Print_to_Web] [tinyint] NOT NULL,
[Check_Call_Back] [tinyint] NOT NULL,
[Retainage_Percent] [smallint] NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_PO_Validation] [smallint] NOT NULL,
[Location_Code_Vendor] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORECTYPE] [smallint] NOT NULL,
[WO_Office_ID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WO_TimeZone] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOENTSTA] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOBOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOCOMPSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOWIPSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOLOCAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Parts_Available_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Address_Option] [smallint] NOT NULL,
[SVC_Disable_XFR_Grouping] [tinyint] NOT NULL,
[Ready_To_Invoice_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Invoiced_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Auto_Create_Labor] [smallint] NOT NULL,
[USRDRPR6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRP10] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt10] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt11] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt12] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt13] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt14] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt15] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Check_SC_Labor] [smallint] NOT NULL,
[SVC_Check_WO_Labor] [smallint] NOT NULL,
[SVC_Check_Call_Back] [tinyint] NOT NULL,
[SVC_Service_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Directory] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Return_Price_Level] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Transfer_Option] [smallint] NOT NULL,
[SVC_Service_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Service_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Use_Return] [tinyint] NOT NULL,
[SVC_Dup_Serial] [smallint] NOT NULL,
[SVC_Auto_SOP_Contract] [tinyint] NOT NULL,
[SVC_Contract_Warranty] [tinyint] NOT NULL,
[SVC_Create_Serial] [tinyint] NOT NULL,
[SVC_Vendor_Warranty_Flag] [smallint] NOT NULL,
[SVC_Seller_Warranty_Flag] [smallint] NOT NULL,
[SVC_Create_POP_Serial] [tinyint] NOT NULL,
[SVC_ItemDelta] [tinyint] NOT NULL,
[SVC_Allow_Contract_0_SOP] [tinyint] NOT NULL,
[SVC_Allow_Service_0_SOP] [tinyint] NOT NULL,
[SVC_C_Credit_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_C_Credit_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_S_Credit_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_S_Credit_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Zero_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Zero_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Auto_Credit_Receipt] [tinyint] NOT NULL,
[SVC_Auto_Replace_Receipt] [tinyint] NOT NULL,
[SVC_RMA_Invoice_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Credit_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Order_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Call_To] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Call_From] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[SVC_User_Define_Prompt16] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt17] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt18] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt19] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_User_Define_Prompt20] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Auto_XShip_Receipt] [tinyint] NOT NULL,
[SVC_Use_Payable] [tinyint] NOT NULL,
[SVC_PrePaid_Override] [tinyint] NOT NULL,
[SVC_DistHistory_Contract] [tinyint] NOT NULL,
[SVC_DistHistory_RMA] [tinyint] NOT NULL,
[SVC_DistHistory_RTV] [tinyint] NOT NULL,
[SVC_DistHistory_Service] [tinyint] NOT NULL,
[SVC_DistHistory_Transfer] [tinyint] NOT NULL,
[SVC_DistHistory_Work_Ord] [tinyint] NOT NULL,
[SVC_Use_Same_Number] [tinyint] NOT NULL,
[SVC_InStock_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_InStock_Status] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Create_Non_Serial_Eq] [tinyint] NOT NULL,
[SVC_Allow_RMA_0_SOP] [tinyint] NOT NULL,
[SVC_Use_Return_Price_Lev] [tinyint] NOT NULL,
[SVC_Supersession_Enabled] [tinyint] NOT NULL,
[AUTOREN] [tinyint] NOT NULL,
[SVC_Days_to_Renew] [smallint] NOT NULL,
[MXINCPCT] [numeric] (19, 5) NOT NULL,
[PCTCRYFWD] [numeric] (19, 5) NOT NULL,
[SVC_Remove_Price_Overrid] [tinyint] NOT NULL,
[RENPRCSCHD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNSOLDTD] [tinyint] NOT NULL,
[svcDonotCombinePM] [tinyint] NOT NULL,
[svcContractPMOnly] [tinyint] NOT NULL,
[svcAutoMoveHistory] [tinyint] NOT NULL,
[svcAllowNonInventoried] [tinyint] NOT NULL,
[svcUsePayRate] [tinyint] NOT NULL,
[svcUsePayroll] [smallint] NOT NULL,
[svcDefaultWorkType_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcDefaultWorkType_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcDefaultWorkType_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcDefaultWorkType_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcDefaultWorkType_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcBillingExchangeRate] [smallint] NOT NULL,
[svcRevenueExchangeRate] [smallint] NOT NULL,
[svcConsolidateSOPOrder] [tinyint] NOT NULL,
[svcCreateMAEquipment] [tinyint] NOT NULL,
[svcCreateMANonSerialEq] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00998] ADD CONSTRAINT [PKSVC00998] PRIMARY KEY CLUSTERED  ([SEQUENCE1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00998].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[MULEQUIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[MULCODES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[MULTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SRVSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Backorder_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Intransit_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Dispatch_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Arrival_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Complete_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[POSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Single_PO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SRLSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[RETSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[CKSVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[CKSKILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[MAPPRLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[NUMDAYSOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[NUMDAYSPM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[NUMDAYSCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[CHGHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[AUTOCUST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[RETCSTNR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[PAGEON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[PAGEPROFILE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Use_SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Password_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Check_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Check_Customer_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Check_Serial]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[EMail_Tech]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Use_POP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Print_to_Web]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Check_Call_Back]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[Retainage_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_PO_Validation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Location_Code_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WO_Office_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WO_TimeZone]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOENTSTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOBOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOCOMPSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOWIPSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[WOLOCAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Parts_Available_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Disable_XFR_Grouping]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Ready_To_Invoice_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Invoiced_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Auto_Create_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRPR9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[USRDRP10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Check_SC_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Check_WO_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Check_Call_Back]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Service_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Directory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Return_Price_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Transfer_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Service_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Service_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Contract_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Contract_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Use_Return]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Dup_Serial]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Auto_SOP_Contract]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Contract_Warranty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Create_Serial]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Vendor_Warranty_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Seller_Warranty_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Create_POP_Serial]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_ItemDelta]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Allow_Contract_0_SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Allow_Service_0_SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_C_Credit_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_C_Credit_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_S_Credit_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_S_Credit_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Zero_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_Zero_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Auto_Credit_Receipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Auto_Replace_Receipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_RMA_Invoice_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_RMA_Credit_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_RMA_Order_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Call_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[Call_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_User_Define_Prompt20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Auto_XShip_Receipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Use_Payable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_PrePaid_Override]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_Contract]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_RMA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_RTV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_DistHistory_Work_Ord]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Use_Same_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_InStock_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[SVC_InStock_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Create_Non_Serial_Eq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Allow_RMA_0_SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Use_Return_Price_Lev]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Supersession_Enabled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[AUTOREN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Days_to_Renew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00998].[MXINCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00998].[PCTCRYFWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[SVC_Remove_Price_Overrid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[RENPRCSCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[CNSOLDTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcDonotCombinePM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcContractPMOnly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcAutoMoveHistory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcAllowNonInventoried]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcUsePayRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcUsePayroll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[svcDefaultWorkType_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[svcDefaultWorkType_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[svcDefaultWorkType_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[svcDefaultWorkType_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00998].[svcDefaultWorkType_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcBillingExchangeRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcRevenueExchangeRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcConsolidateSOPOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcCreateMAEquipment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00998].[svcCreateMANonSerialEq]'
GO
GRANT SELECT ON  [dbo].[SVC00998] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00998] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00998] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00998] TO [DYNGRP]
GO
