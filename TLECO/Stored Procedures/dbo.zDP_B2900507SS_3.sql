SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900507SS_3] (@BSSI_ChargeID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, DEX_ROW_ID FROM .B2900507 WHERE BSSI_ChargeID = @BSSI_ChargeID ORDER BY BSSI_ChargeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900507SS_3] TO [DYNGRP]
GO
