SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602200F_6] (@CUSTNAME_RS char(65), @CUSTNAME_RE char(65)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNAME_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, BSSI_Master_Lease, BSSI_Description, NOTEINDX, LOCNCODE, BSSI_PortfolioID, BSSI_Description1, CUSTNMBR, CURNCYID, BSSI_Payee_ID, BSSI_Notice_Party_ID, LOCATNID, BSSI_LeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, CUSTNAME, LOCNDSCR, BSSI_On_Hold_Date, BSSI_On_Hold_Date_Note_I, BSSI_Cancelled_Date, BSSI_Cancelled_Date_Note, BSSI_Initial_Contact_Dat, BSSI_Invoice_Alternate_T, BSSI_Customer_Site_Name, BSSI_Charge_ID, BSSI_Customer_Type, BSSI_Facility_ID, BSSI_Department_ID, BSSI_SICCode, BSSI_Consolidate, BSSI_Dummy, DEX_ROW_ID FROM .B4602200 ORDER BY CUSTNAME ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNAME_RS = @CUSTNAME_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, BSSI_Master_Lease, BSSI_Description, NOTEINDX, LOCNCODE, BSSI_PortfolioID, BSSI_Description1, CUSTNMBR, CURNCYID, BSSI_Payee_ID, BSSI_Notice_Party_ID, LOCATNID, BSSI_LeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, CUSTNAME, LOCNDSCR, BSSI_On_Hold_Date, BSSI_On_Hold_Date_Note_I, BSSI_Cancelled_Date, BSSI_Cancelled_Date_Note, BSSI_Initial_Contact_Dat, BSSI_Invoice_Alternate_T, BSSI_Customer_Site_Name, BSSI_Charge_ID, BSSI_Customer_Type, BSSI_Facility_ID, BSSI_Department_ID, BSSI_SICCode, BSSI_Consolidate, BSSI_Dummy, DEX_ROW_ID FROM .B4602200 WHERE CUSTNAME = @CUSTNAME_RS ORDER BY CUSTNAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, NAME, BSSI_Master_Lease, BSSI_Description, NOTEINDX, LOCNCODE, BSSI_PortfolioID, BSSI_Description1, CUSTNMBR, CURNCYID, BSSI_Payee_ID, BSSI_Notice_Party_ID, LOCATNID, BSSI_LeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, CUSTNAME, LOCNDSCR, BSSI_On_Hold_Date, BSSI_On_Hold_Date_Note_I, BSSI_Cancelled_Date, BSSI_Cancelled_Date_Note, BSSI_Initial_Contact_Dat, BSSI_Invoice_Alternate_T, BSSI_Customer_Site_Name, BSSI_Charge_ID, BSSI_Customer_Type, BSSI_Facility_ID, BSSI_Department_ID, BSSI_SICCode, BSSI_Consolidate, BSSI_Dummy, DEX_ROW_ID FROM .B4602200 WHERE CUSTNAME BETWEEN @CUSTNAME_RS AND @CUSTNAME_RE ORDER BY CUSTNAME ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602200F_6] TO [DYNGRP]
GO
