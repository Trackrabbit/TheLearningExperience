CREATE TABLE [dbo].[B4600100]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_TerrStat_AcctSegNum] [smallint] NOT NULL,
[BSSI_TerrStat_AcctSegNam] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Portf_Acct_Seg_Name] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Portfo_Acct_Seg_Num] [smallint] NOT NULL,
[BSSI_Site_Acct_Seg_Name] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Acct_Seg_Numbe] [smallint] NOT NULL,
[BSSI_Region_AcctSegNam1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Region_AcctSegNum1] [smallint] NOT NULL,
[BSSI_Site_Validation_Fir] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Validation_FN] [smallint] NOT NULL,
[BSSI_Site_Validation_Sec] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Validation_SN] [smallint] NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[BSSI_Site_Type_Cost_ANam] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Type_Cost_Acct] [smallint] NOT NULL,
[BSSI_Site_Type_Rev_AName] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Type_Revenue_A] [smallint] NOT NULL,
[BSSI_Deferred_AccSeg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Prepaid_Seg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Account_Receivables1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Accrued_Comm_Seg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Type_Prev_Acct] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Type_Ground_Re] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_NextNu] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_NextNu] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Straight_Ground_Seg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Straight_Tenant_Seg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Force_Lease_Req_Fie] [smallint] NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Holdover_Term_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Termination_Term_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SL_Calc_Option] [smallint] NOT NULL,
[BSSI_Charge_Type] [smallint] NOT NULL,
[PASSWORD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_View_Additional_Inf] [tinyint] NOT NULL,
[BSSI_View_Tower_Info] [tinyint] NOT NULL,
[BSSI_View_Property_Info] [tinyint] NOT NULL,
[BSSI_Use_Field_Service] [tinyint] NOT NULL,
[BSSI_Use_Fixed_Asset] [tinyint] NOT NULL,
[GROUPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Pass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WWW_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_WWW_Lease] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Useful_Life_Months] [smallint] NOT NULL,
[BSSI_Keep_Invoiced_CPI_I] [tinyint] NOT NULL,
[BSSI_Calculate_Loss_Or_G] [tinyint] NOT NULL,
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AP_Invoice_Doc_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Excel_Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Cash_Rev_Recognitio] [smallint] NOT NULL,
[BSSI_Next_Work_Order_Num] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Address_Option] [smallint] NOT NULL,
[BSSI_Provider_Type] [smallint] NOT NULL,
[BSSI_WO_Auto_Number] [tinyint] NOT NULL,
[BSSI_Lease_Origin] [smallint] NOT NULL,
[BSSI_Equipment_Origin] [smallint] NOT NULL,
[BSSI_Disable_Auto_Number] [tinyint] NOT NULL,
[BSSI_Disable_Ground_Leas] [tinyint] NOT NULL,
[BSSI_DateBased_SOP_Numbe] [tinyint] NOT NULL,
[BSSI_Use_Expenses_Alloc] [tinyint] NOT NULL,
[BSSI_DocumentURL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_TenantLeaseTypeID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_GroundLeaseTypeID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableBudgetingModu] [tinyint] NOT NULL,
[BSSI_EnableOverageModule] [tinyint] NOT NULL,
[BSSI_Disable_MFP] [tinyint] NOT NULL,
[BSSI_ReconciliationOpt] [smallint] NOT NULL,
[BSSI_ProrationOpt] [smallint] NOT NULL,
[BSSI_EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Calculate_Straight_] [tinyint] NOT NULL,
[BSSI_Validate_Site_Occup] [tinyint] NOT NULL,
[BSSI_Period_To_Period_Le] [smallint] NOT NULL,
[BSSI_Unlimited_Renewals] [smallint] NOT NULL,
[BSSI_Prepaid_Lease] [smallint] NOT NULL,
[BSSI_SalesReportFreqcy] [smallint] NOT NULL,
[BSSI_SalesAuditFreqcy] [smallint] NOT NULL,
[BSSI_MeterReadingFreqcy] [smallint] NOT NULL,
[BSSI_Default_Customer_PO] [tinyint] NOT NULL,
[BSSI_Unit_Start_DT_Type] [smallint] NOT NULL,
[BSSI_Esc_Start_DT_Type] [smallint] NOT NULL,
[BSSI_EnableExpenseModule] [tinyint] NOT NULL,
[BSSI_EnableMeterModule] [tinyint] NOT NULL,
[BSSI_EnableRevenueModule] [tinyint] NOT NULL,
[BSSI_EnableTowerModule] [tinyint] NOT NULL,
[BSSI_EnableMassOneTime] [tinyint] NOT NULL,
[BSSI_Rev_SL_Start_DT_Typ] [smallint] NOT NULL,
[BSSI_Exp_SL_Start_DT_Typ] [smallint] NOT NULL,
[BSSI_ExpensePass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExpensePassword] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Exp_Period_To_Perio] [smallint] NOT NULL,
[BSSI_Exp_Prepaid_Lease] [smallint] NOT NULL,
[BSSI_Exp_Unlimited_Renew] [smallint] NOT NULL,
[BSSI_Exp_Esc_Start_DT_Ty] [smallint] NOT NULL,
[BSSI_Exp_Calculate_Strai] [tinyint] NOT NULL,
[BSSI_UseRMCustomReport] [tinyint] NOT NULL,
[BSSI_EscalateEffective] [tinyint] NOT NULL,
[BSSI_CPIIndexAmtCalculat] [smallint] NOT NULL,
[BSSI_CPIIndexCalculation] [smallint] NOT NULL,
[BSSI_EqualPerPeriod] [smallint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[BSSI_ConsolidateByCharge] [tinyint] NOT NULL,
[BSSI_bMarketRent] [tinyint] NOT NULL,
[BSSI_AllocExpByPercOrAmt] [tinyint] NOT NULL,
[BSSI_CombineBuildings] [tinyint] NOT NULL,
[BSSI_CombineCharges] [smallint] NOT NULL,
[BSSI_ConsolidateLeases] [tinyint] NOT NULL,
[BSSI_IncYearSOPLine] [tinyint] NOT NULL,
[BSSI_Pass1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableARED] [tinyint] NOT NULL,
[BSSI_CreateSchBasedDate] [tinyint] NOT NULL,
[BSSI_RecognitionFrequenc] [smallint] NOT NULL,
[BSSI_InvoiceType] [smallint] NOT NULL,
[BSSI_AutoProcessDeposit] [tinyint] NOT NULL,
[BSSI_Invoice_Date] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600100] ADD CONSTRAINT [PKB4600100] PRIMARY KEY CLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_TerrStat_AcctSegNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_TerrStat_AcctSegNam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Portf_Acct_Seg_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Portfo_Acct_Seg_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Acct_Seg_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Site_Acct_Seg_Numbe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Region_AcctSegNam1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Region_AcctSegNum1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Validation_Fir]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Site_Validation_FN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Validation_Sec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Site_Validation_SN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Type_Cost_ANam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Site_Type_Cost_Acct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Type_Rev_AName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Site_Type_Revenue_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Deferred_AccSeg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Prepaid_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Account_Receivables1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Accrued_Comm_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Type_Prev_Acct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Site_Type_Ground_Re]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Tenant_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Tenant_Lease_NextNu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Ground_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Ground_Lease_NextNu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Straight_Ground_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Straight_Tenant_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Force_Lease_Req_Fie]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Holdover_Term_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Termination_Term_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_SL_Calc_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Charge_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_View_Additional_Inf]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_View_Tower_Info]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_View_Property_Info]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Use_Field_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Use_Fixed_Asset]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[GROUPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Pass]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[WWW_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_WWW_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Useful_Life_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Keep_Invoiced_CPI_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Calculate_Loss_Or_G]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_AP_Invoice_Doc_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Excel_Path]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Cash_Rev_Recognitio]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Next_Work_Order_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Provider_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_WO_Auto_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Lease_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Equipment_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Disable_Auto_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Disable_Ground_Leas]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_DateBased_SOP_Numbe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Use_Expenses_Alloc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_DocumentURL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_TenantLeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_GroundLeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableBudgetingModu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableOverageModule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Disable_MFP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_ReconciliationOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_ProrationOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Calculate_Straight_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Validate_Site_Occup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Period_To_Period_Le]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Unlimited_Renewals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Prepaid_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_SalesReportFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_SalesAuditFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_MeterReadingFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Default_Customer_PO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Unit_Start_DT_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Esc_Start_DT_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableExpenseModule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableMeterModule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableRevenueModule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableTowerModule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableMassOneTime]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Rev_SL_Start_DT_Typ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_SL_Start_DT_Typ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_ExpensePass]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[ExpensePassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_Period_To_Perio]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_Prepaid_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_Unlimited_Renew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_Esc_Start_DT_Ty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Exp_Calculate_Strai]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_UseRMCustomReport]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EscalateEffective]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_CPIIndexAmtCalculat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_CPIIndexCalculation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EqualPerPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Dummy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_ConsolidateByCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_bMarketRent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_AllocExpByPercOrAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_CombineBuildings]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_CombineCharges]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_ConsolidateLeases]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_IncYearSOPLine]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600100].[BSSI_Pass1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_EnableARED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_CreateSchBasedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_RecognitionFrequenc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_InvoiceType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_AutoProcessDeposit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600100].[BSSI_Invoice_Date]'
GO
GRANT SELECT ON  [dbo].[B4600100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600100] TO [DYNGRP]
GO
