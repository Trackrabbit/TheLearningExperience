SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900507SI] (@BSSI_Lease_Loan_Number char(17), @BSSI_LeaseID char(17), @BSSI_ChargeID char(21), @BSSI_ChargeAmt numeric(19,5), @BSSI_ChargeIncInLease tinyint, @LNITMSEQ int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900507 (BSSI_Lease_Loan_Number, BSSI_LeaseID, BSSI_ChargeID, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ) VALUES ( @BSSI_Lease_Loan_Number, @BSSI_LeaseID, @BSSI_ChargeID, @BSSI_ChargeAmt, @BSSI_ChargeIncInLease, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900507SI] TO [DYNGRP]
GO
