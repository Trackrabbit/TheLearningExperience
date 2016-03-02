SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640019F_2] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, YEAR1, CUSTNMBR, CUSTNAME, BSSI_ContributionAmount, BSSI_ContributionArea, BSSI_LeasableContriArea, BSSI_PayablesAmount, BSSI_BilledAmount, BSSI_AmountDue, BSSI_IsCompleted, BSSI_IsCorrected, BSSI_MinTargetOccupancy, BSSI_CoTenancy, BSSI_AdminFee, BSSI_DaysOccupied, BSSI_Leased_Space_SF, BSSI_Rate, BSSI_WeighedOccupiedArea, BSSI_NetProjectArea, BSSI_LineSeqNumber, SOPNUMBE, BSSI_AdminFeeAmount, BSSI_NetYearCost, BSSI_ShortComment, BSSI_IsInterior, USERID, BSSI_BuildingExpenses, BSSI_BuilldingArea, BSSI_LeasedMallArea, BSSI_ExteriorLeaseArea, BSSI_ExteriorLeasedArea, BSSI_DaysInYear, BSSI_Factor, BSSI_CurrentOccupancy, BSSI_CurrOccupInt, BSSI_NetYearCostInt, BSSI_ContribAmountInt, BSSI_LsbContribAreaInt, BSSI_LsdContribAreaInt, BSSI_WeigOccpAreaInt, BSSI_AdminFeeAmountInt, BSSI_NetProjAreaInt, BSSI_PayablesAmountInt, BSSI_RateInt, BSSI_ExteriorExpense, BSSI_InteriorExpense, BSSI_InteriorLeaseArea, BSSI_InteriorLeasedArea, BSSI_RecoverableChargeID, BSSI_LsbArea_Ext, From_Date, TODATE, DEX_ROW_ID FROM .B4640019 ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, YEAR1, CUSTNMBR, CUSTNAME, BSSI_ContributionAmount, BSSI_ContributionArea, BSSI_LeasableContriArea, BSSI_PayablesAmount, BSSI_BilledAmount, BSSI_AmountDue, BSSI_IsCompleted, BSSI_IsCorrected, BSSI_MinTargetOccupancy, BSSI_CoTenancy, BSSI_AdminFee, BSSI_DaysOccupied, BSSI_Leased_Space_SF, BSSI_Rate, BSSI_WeighedOccupiedArea, BSSI_NetProjectArea, BSSI_LineSeqNumber, SOPNUMBE, BSSI_AdminFeeAmount, BSSI_NetYearCost, BSSI_ShortComment, BSSI_IsInterior, USERID, BSSI_BuildingExpenses, BSSI_BuilldingArea, BSSI_LeasedMallArea, BSSI_ExteriorLeaseArea, BSSI_ExteriorLeasedArea, BSSI_DaysInYear, BSSI_Factor, BSSI_CurrentOccupancy, BSSI_CurrOccupInt, BSSI_NetYearCostInt, BSSI_ContribAmountInt, BSSI_LsbContribAreaInt, BSSI_LsdContribAreaInt, BSSI_WeigOccpAreaInt, BSSI_AdminFeeAmountInt, BSSI_NetProjAreaInt, BSSI_PayablesAmountInt, BSSI_RateInt, BSSI_ExteriorExpense, BSSI_InteriorExpense, BSSI_InteriorLeaseArea, BSSI_InteriorLeasedArea, BSSI_RecoverableChargeID, BSSI_LsbArea_Ext, From_Date, TODATE, DEX_ROW_ID FROM .B4640019 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LOCNDSCR, BSSI_Charge_ID, BSSI_Description, YEAR1, CUSTNMBR, CUSTNAME, BSSI_ContributionAmount, BSSI_ContributionArea, BSSI_LeasableContriArea, BSSI_PayablesAmount, BSSI_BilledAmount, BSSI_AmountDue, BSSI_IsCompleted, BSSI_IsCorrected, BSSI_MinTargetOccupancy, BSSI_CoTenancy, BSSI_AdminFee, BSSI_DaysOccupied, BSSI_Leased_Space_SF, BSSI_Rate, BSSI_WeighedOccupiedArea, BSSI_NetProjectArea, BSSI_LineSeqNumber, SOPNUMBE, BSSI_AdminFeeAmount, BSSI_NetYearCost, BSSI_ShortComment, BSSI_IsInterior, USERID, BSSI_BuildingExpenses, BSSI_BuilldingArea, BSSI_LeasedMallArea, BSSI_ExteriorLeaseArea, BSSI_ExteriorLeasedArea, BSSI_DaysInYear, BSSI_Factor, BSSI_CurrentOccupancy, BSSI_CurrOccupInt, BSSI_NetYearCostInt, BSSI_ContribAmountInt, BSSI_LsbContribAreaInt, BSSI_LsdContribAreaInt, BSSI_WeigOccpAreaInt, BSSI_AdminFeeAmountInt, BSSI_NetProjAreaInt, BSSI_PayablesAmountInt, BSSI_RateInt, BSSI_ExteriorExpense, BSSI_InteriorExpense, BSSI_InteriorLeaseArea, BSSI_InteriorLeasedArea, BSSI_RecoverableChargeID, BSSI_LsbArea_Ext, From_Date, TODATE, DEX_ROW_ID FROM .B4640019 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640019F_2] TO [DYNGRP]
GO