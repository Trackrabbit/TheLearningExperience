SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602900L_4] (@VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, NAME, BSSI_Description, NOTEINDX, LOCNCODE, VENDORID, BSSI_Payee_ID, BSSI_Notice_Party_ID, BSSI_LeaseTypeID, BSSI_Ground_Lease_Prefix, CURNCYID, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, VENDNAME, LOCNDSCR, BSSI_Charge_ID, BSSI_PortfolioID, BSSI_Description1, BSSI_Facility_ID, BSSI_Department_ID, BSSI_Dummy, DEX_ROW_ID FROM .B4602900 ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, NAME, BSSI_Description, NOTEINDX, LOCNCODE, VENDORID, BSSI_Payee_ID, BSSI_Notice_Party_ID, BSSI_LeaseTypeID, BSSI_Ground_Lease_Prefix, CURNCYID, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, VENDNAME, LOCNDSCR, BSSI_Charge_ID, BSSI_PortfolioID, BSSI_Description1, BSSI_Facility_ID, BSSI_Department_ID, BSSI_Dummy, DEX_ROW_ID FROM .B4602900 WHERE VENDORID = @VENDORID_RS ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, NAME, BSSI_Description, NOTEINDX, LOCNCODE, VENDORID, BSSI_Payee_ID, BSSI_Notice_Party_ID, BSSI_LeaseTypeID, BSSI_Ground_Lease_Prefix, CURNCYID, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, VENDNAME, LOCNDSCR, BSSI_Charge_ID, BSSI_PortfolioID, BSSI_Description1, BSSI_Facility_ID, BSSI_Department_ID, BSSI_Dummy, DEX_ROW_ID FROM .B4602900 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDORID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602900L_4] TO [DYNGRP]
GO
