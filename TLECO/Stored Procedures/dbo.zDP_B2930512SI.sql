SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930512SI] (@BSSI_Lease_Loan_Number char(17), @LNITMSEQ int, @DEDUCTON char(7), @BSSI_DeductionPercentage smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2930512 (BSSI_Lease_Loan_Number, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage) VALUES ( @BSSI_Lease_Loan_Number, @LNITMSEQ, @DEDUCTON, @BSSI_DeductionPercentage) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930512SI] TO [DYNGRP]
GO
