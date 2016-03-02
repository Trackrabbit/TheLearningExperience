SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920100SS_1] (@BSSI_InvestmentLoan smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_InvestmentLoan, BSSINumberDayInArrears, BSSI_Annually, BSSI_Monthly, BSSI_Quarterly, BSSI_SemiAnnually, BSSI_SemiMonthly, BSSI_Weekly, BSSI_BiWeekly, DEX_ROW_ID FROM .B2920100 WHERE BSSI_InvestmentLoan = @BSSI_InvestmentLoan ORDER BY BSSI_InvestmentLoan ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920100SS_1] TO [DYNGRP]
GO
