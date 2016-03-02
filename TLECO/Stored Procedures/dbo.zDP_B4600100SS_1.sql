SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600100SS_1] (@SETUPKEY smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  SETUPKEY, BSSI_TerrStat_AcctSegNum, BSSI_TerrStat_AcctSegNam, BSSI_Portf_Acct_Seg_Name, BSSI_Portfo_Acct_Seg_Num, BSSI_Site_Acct_Seg_Name, BSSI_Site_Acct_Seg_Numbe, BSSI_Region_AcctSegNam1, BSSI_Region_AcctSegNum1, BSSI_Site_Validation_Fir, BSSI_Site_Validation_FN, BSSI_Site_Validation_Sec, BSSI_Site_Validation_SN, BSSI_Billing_Frequency, BSSI_Site_Type_Cost_ANam, BSSI_Site_Type_Cost_Acct, BSSI_Site_Type_Rev_AName, BSSI_Site_Type_Revenue_A, BSSI_Deferred_AccSeg, BSSI_Prepaid_Seg, BSSI_Account_Receivables1, BSSI_Accrued_Comm_Seg, BSSI_Site_Type_Prev_Acct, BSSI_Site_Type_Ground_Re, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, BSSI_Straight_Ground_Seg, BSSI_Straight_Tenant_Seg, BSSI_Force_Lease_Req_Fie, BSSI_Term, BSSI_Holdover_Term_ID, BSSI_Termination_Term_ID, BSSI_SL_Calc_Option, BSSI_Charge_Type, PASSWORD, BSSI_View_Additional_Inf, BSSI_View_Tower_Info, BSSI_View_Property_Info, BSSI_Use_Field_Service, BSSI_Use_Fixed_Asset, GROUPID, BSSI_Pass, WWW_URL, BSSI_WWW_Lease, BSSI_Useful_Life_Months, BSSI_Keep_Invoiced_CPI_I, BSSI_Calculate_Loss_Or_G, DOCID, BSSI_AP_Invoice_Doc_ID, BSSI_Excel_Path, BSSI_Cash_Rev_Recognitio, BSSI_Next_Work_Order_Num, BSSI_Address_Option, BSSI_Provider_Type, BSSI_WO_Auto_Number, BSSI_Lease_Origin, BSSI_Equipment_Origin, BSSI_Disable_Auto_Number, BSSI_Disable_Ground_Leas, BSSI_DateBased_SOP_Numbe, BSSI_Use_Expenses_Alloc, BSSI_DocumentURL, BSSI_OccupancyTypeID, BSSI_TenantLeaseTypeID, BSSI_GroundLeaseTypeID, BSSI_EnableBudgetingModu, BSSI_EnableOverageModule, BSSI_Disable_MFP, BSSI_ReconciliationOpt, BSSI_ProrationOpt, BSSI_EmailSubject, BSSI_Calculate_Straight_, BSSI_Validate_Site_Occup, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_SalesReportFreqcy, BSSI_SalesAuditFreqcy, BSSI_MeterReadingFreqcy, BSSI_Default_Customer_PO, BSSI_Unit_Start_DT_Type, BSSI_Esc_Start_DT_Type, BSSI_EnableExpenseModule, BSSI_EnableMeterModule, BSSI_EnableRevenueModule, BSSI_EnableTowerModule, BSSI_EnableMassOneTime, BSSI_Rev_SL_Start_DT_Typ, BSSI_Exp_SL_Start_DT_Typ, BSSI_ExpensePass, ExpensePassword, BSSI_Exp_Period_To_Perio, BSSI_Exp_Prepaid_Lease, BSSI_Exp_Unlimited_Renew, BSSI_Exp_Esc_Start_DT_Ty, BSSI_Exp_Calculate_Strai, BSSI_UseRMCustomReport, BSSI_EscalateEffective, BSSI_CPIIndexAmtCalculat, BSSI_CPIIndexCalculation, BSSI_EqualPerPeriod, BSSI_Dummy, BSSI_ConsolidateByCharge, BSSI_bMarketRent, BSSI_AllocExpByPercOrAmt, BSSI_CombineBuildings, BSSI_CombineCharges, BSSI_ConsolidateLeases, BSSI_IncYearSOPLine, BSSI_Pass1, BSSI_EnableARED, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_InvoiceType, BSSI_AutoProcessDeposit, BSSI_Invoice_Date, DEX_ROW_ID, BSSI_EmailBody FROM .B4600100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600100SS_1] TO [DYNGRP]
GO
