SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900201N_1] (@BS int, @BSSI_LeaseLoanType char(7), @BSSI_LeaseLoanType_RS char(7), @BSSI_LeaseLoanType_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseLoanType_RS IS NULL BEGIN SELECT TOP 25  BSSI_LeaseLoanType, BSSI_LeaseLoan_NextNo, NOTEINDX, DEX_ROW_ID FROM .B2900201 WHERE ( BSSI_LeaseLoanType > @BSSI_LeaseLoanType ) ORDER BY BSSI_LeaseLoanType ASC END ELSE IF @BSSI_LeaseLoanType_RS = @BSSI_LeaseLoanType_RE BEGIN SELECT TOP 25  BSSI_LeaseLoanType, BSSI_LeaseLoan_NextNo, NOTEINDX, DEX_ROW_ID FROM .B2900201 WHERE BSSI_LeaseLoanType = @BSSI_LeaseLoanType_RS AND ( BSSI_LeaseLoanType > @BSSI_LeaseLoanType ) ORDER BY BSSI_LeaseLoanType ASC END ELSE BEGIN SELECT TOP 25  BSSI_LeaseLoanType, BSSI_LeaseLoan_NextNo, NOTEINDX, DEX_ROW_ID FROM .B2900201 WHERE BSSI_LeaseLoanType BETWEEN @BSSI_LeaseLoanType_RS AND @BSSI_LeaseLoanType_RE AND ( BSSI_LeaseLoanType > @BSSI_LeaseLoanType ) ORDER BY BSSI_LeaseLoanType ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900201N_1] TO [DYNGRP]
GO
