SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920990L_1] (@DOCNUMBR_RS char(21), @DOCNUMBR_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, CUSTNMBR, BSSI_Lease_Loan_Number, Schedule_Payment_Number, BSSI_IsAccountSubs, BSSI_IsIntercompany, BSSI_IsProcessed, DEX_ROW_ID FROM .B2920990 ORDER BY DOCNUMBR DESC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, CUSTNMBR, BSSI_Lease_Loan_Number, Schedule_Payment_Number, BSSI_IsAccountSubs, BSSI_IsIntercompany, BSSI_IsProcessed, DEX_ROW_ID FROM .B2920990 WHERE DOCNUMBR = @DOCNUMBR_RS ORDER BY DOCNUMBR DESC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, CUSTNMBR, BSSI_Lease_Loan_Number, Schedule_Payment_Number, BSSI_IsAccountSubs, BSSI_IsIntercompany, BSSI_IsProcessed, DEX_ROW_ID FROM .B2920990 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCNUMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920990L_1] TO [DYNGRP]
GO
