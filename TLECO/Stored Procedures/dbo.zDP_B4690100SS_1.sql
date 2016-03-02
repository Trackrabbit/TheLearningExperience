SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690100SS_1] (@LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LNSEQNBR, DATE1, TIME1, USERID, USERDATE, TYPEID, BSSI_Ground_Lease_Number, BSSI_Tenant_Lease_Number, NAME, BSSI_Master_Lease, BSSI_Description, NOTEINDX, LOCNCODE, CUSTNMBR, BSSI_Payee_ID, BSSI_Notice_Party_ID, LOCATNID, BSSI_LeaseTypeID, BSSI_Period_To_Period_Le, BSSI_Unlimited_Renewals, BSSI_Prepaid_Lease, BSSI_Access_To_Space, BSSI_Access_To_Space_Not, BSSI_Sq_Ft_Required, BSSI_Sq_Ft_Required_Note, BSSI_Tenant_Lease_Status, BSSI_Lease_Execution_Dat, BSSI_Lease_ExecNoteIndex, BSSI_Projected_Lease_Exe, BSSI_Lease_Executed_Date, BSSI_Lease_CommDT, BSSI_Lease_CommNoteIndex, BSSI_Proj_Lease_CommDT, BSSI_Rent_Commencement_D, BSSI_Rent_CommNoteIndex, BSSI_Proj_Rent_CommDT, BSSI_Lease_Initial_ExpDT, BSSI_Lease_InitExpNoteIn, BSSI_Lease_Final_ExpDT, BSSI_Lease_FinNoteIndex, BSSI_Lease_Termination_D, BSSI_Lease_TrmtNoteIndex, BSSI_Lease_Initial_Term, BSSI_Is_Holdover_Fee, BSSI_Is_Holdover_Fee_Not, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, CUSTNAME, LOCNDSCR, BSSI_On_Hold_Date, BSSI_On_Hold_Date_Note_I, BSSI_Cancelled_Date, BSSI_Cancelled_Date_Note, BSSI_Initial_Contact_Dat, BSSI_Invoice_Alternate_T, DEX_ROW_ID, TXTFIELD FROM .B4690100 WHERE LNSEQNBR = @LNSEQNBR ORDER BY LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690100SS_1] TO [DYNGRP]
GO
