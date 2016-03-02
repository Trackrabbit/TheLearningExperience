SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602901F_1] (@BSSI_Ground_Lease_Number_RS char(25), @BSSI_Ground_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Required_Remove_Tow, BSSI_Required_Remove_TNI, BSSI_Asset_Retirement_Re, BSSI_ARR_Note_Index, BSSI_Ownership_Revert, BSSI_Ownershp_Revert_NI1, BSSI_Ownership_ARO, BSSI_Ownership_ARO_NI, BSSI_Consent_To_Sublease, BSSI_ConsentForSRNI, BSSI_Landlord_Notice_Sub, BSSI_LLN_Sublease_NI, BSSILLRightOfFirstRefusa, BSSI_LLR_1st_RefusalNI, BSSI_Rev_Share, BSSI_Rev_Share_NI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Can_Term_1_Cur_Date, BSSI_Can_Term_Cur_DateNI, BSSI_Rent_RevSharingPay, BSSI_Rent_CRSP_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Com_Term_Rights, BSSI_Com_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, BSSI_LL_Term_Rights, BSSI_LL_Term_Rights_NI, BSSI_TerminateRightDate, BSSI_Term_RED_NI, BSSI_Notice_Required_Ter, BSSI_Landlord_Notice_Req, BSSI_Landlord_Consent_Re, BSSI_Landlord_Consent_NI, BSSI_COC_Notice_Period, BSSI_COC_Notice_Period_N, BSSI_GL_Mortgage, BSSI_Diamond_Mortgage, BSSI_assign_affiliates, BSSI_Landlord_AssignNI, BSSI_GL_Mortgate_NI, BSSI_Company_Mortgage_NI, BSSI_Notice_Term_NI, BSSI_Assign_Affiliates_N, BSSI_Notice_Assign_NI, DEX_ROW_ID, BSSI_Comments FROM .B4602901 ORDER BY BSSI_Ground_Lease_Number ASC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Required_Remove_Tow, BSSI_Required_Remove_TNI, BSSI_Asset_Retirement_Re, BSSI_ARR_Note_Index, BSSI_Ownership_Revert, BSSI_Ownershp_Revert_NI1, BSSI_Ownership_ARO, BSSI_Ownership_ARO_NI, BSSI_Consent_To_Sublease, BSSI_ConsentForSRNI, BSSI_Landlord_Notice_Sub, BSSI_LLN_Sublease_NI, BSSILLRightOfFirstRefusa, BSSI_LLR_1st_RefusalNI, BSSI_Rev_Share, BSSI_Rev_Share_NI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Can_Term_1_Cur_Date, BSSI_Can_Term_Cur_DateNI, BSSI_Rent_RevSharingPay, BSSI_Rent_CRSP_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Com_Term_Rights, BSSI_Com_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, BSSI_LL_Term_Rights, BSSI_LL_Term_Rights_NI, BSSI_TerminateRightDate, BSSI_Term_RED_NI, BSSI_Notice_Required_Ter, BSSI_Landlord_Notice_Req, BSSI_Landlord_Consent_Re, BSSI_Landlord_Consent_NI, BSSI_COC_Notice_Period, BSSI_COC_Notice_Period_N, BSSI_GL_Mortgage, BSSI_Diamond_Mortgage, BSSI_assign_affiliates, BSSI_Landlord_AssignNI, BSSI_GL_Mortgate_NI, BSSI_Company_Mortgage_NI, BSSI_Notice_Term_NI, BSSI_Assign_Affiliates_N, BSSI_Notice_Assign_NI, DEX_ROW_ID, BSSI_Comments FROM .B4602901 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS ORDER BY BSSI_Ground_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Required_Remove_Tow, BSSI_Required_Remove_TNI, BSSI_Asset_Retirement_Re, BSSI_ARR_Note_Index, BSSI_Ownership_Revert, BSSI_Ownershp_Revert_NI1, BSSI_Ownership_ARO, BSSI_Ownership_ARO_NI, BSSI_Consent_To_Sublease, BSSI_ConsentForSRNI, BSSI_Landlord_Notice_Sub, BSSI_LLN_Sublease_NI, BSSILLRightOfFirstRefusa, BSSI_LLR_1st_RefusalNI, BSSI_Rev_Share, BSSI_Rev_Share_NI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Can_Term_1_Cur_Date, BSSI_Can_Term_Cur_DateNI, BSSI_Rent_RevSharingPay, BSSI_Rent_CRSP_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Com_Term_Rights, BSSI_Com_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, BSSI_LL_Term_Rights, BSSI_LL_Term_Rights_NI, BSSI_TerminateRightDate, BSSI_Term_RED_NI, BSSI_Notice_Required_Ter, BSSI_Landlord_Notice_Req, BSSI_Landlord_Consent_Re, BSSI_Landlord_Consent_NI, BSSI_COC_Notice_Period, BSSI_COC_Notice_Period_N, BSSI_GL_Mortgage, BSSI_Diamond_Mortgage, BSSI_assign_affiliates, BSSI_Landlord_AssignNI, BSSI_GL_Mortgate_NI, BSSI_Company_Mortgage_NI, BSSI_Notice_Term_NI, BSSI_Assign_Affiliates_N, BSSI_Notice_Assign_NI, DEX_ROW_ID, BSSI_Comments FROM .B4602901 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE ORDER BY BSSI_Ground_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602901F_1] TO [DYNGRP]
GO
