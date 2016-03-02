SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920100SI] (@BSSI_InvestmentLoan smallint, @BSSINumberDayInArrears smallint, @BSSI_Annually tinyint, @BSSI_Monthly tinyint, @BSSI_Quarterly tinyint, @BSSI_SemiAnnually tinyint, @BSSI_SemiMonthly tinyint, @BSSI_Weekly tinyint, @BSSI_BiWeekly tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920100 (BSSI_InvestmentLoan, BSSINumberDayInArrears, BSSI_Annually, BSSI_Monthly, BSSI_Quarterly, BSSI_SemiAnnually, BSSI_SemiMonthly, BSSI_Weekly, BSSI_BiWeekly) VALUES ( @BSSI_InvestmentLoan, @BSSINumberDayInArrears, @BSSI_Annually, @BSSI_Monthly, @BSSI_Quarterly, @BSSI_SemiAnnually, @BSSI_SemiMonthly, @BSSI_Weekly, @BSSI_BiWeekly) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920100SI] TO [DYNGRP]
GO
