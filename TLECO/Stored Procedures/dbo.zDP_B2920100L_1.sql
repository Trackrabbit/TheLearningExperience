SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920100L_1] (@BSSI_InvestmentLoan_RS smallint, @BSSI_InvestmentLoan_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_InvestmentLoan_RS IS NULL BEGIN SELECT TOP 25  BSSI_InvestmentLoan, BSSINumberDayInArrears, BSSI_Annually, BSSI_Monthly, BSSI_Quarterly, BSSI_SemiAnnually, BSSI_SemiMonthly, BSSI_Weekly, BSSI_BiWeekly, DEX_ROW_ID FROM .B2920100 ORDER BY BSSI_InvestmentLoan DESC END ELSE IF @BSSI_InvestmentLoan_RS = @BSSI_InvestmentLoan_RE BEGIN SELECT TOP 25  BSSI_InvestmentLoan, BSSINumberDayInArrears, BSSI_Annually, BSSI_Monthly, BSSI_Quarterly, BSSI_SemiAnnually, BSSI_SemiMonthly, BSSI_Weekly, BSSI_BiWeekly, DEX_ROW_ID FROM .B2920100 WHERE BSSI_InvestmentLoan = @BSSI_InvestmentLoan_RS ORDER BY BSSI_InvestmentLoan DESC END ELSE BEGIN SELECT TOP 25  BSSI_InvestmentLoan, BSSINumberDayInArrears, BSSI_Annually, BSSI_Monthly, BSSI_Quarterly, BSSI_SemiAnnually, BSSI_SemiMonthly, BSSI_Weekly, BSSI_BiWeekly, DEX_ROW_ID FROM .B2920100 WHERE BSSI_InvestmentLoan BETWEEN @BSSI_InvestmentLoan_RS AND @BSSI_InvestmentLoan_RE ORDER BY BSSI_InvestmentLoan DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920100L_1] TO [DYNGRP]
GO
