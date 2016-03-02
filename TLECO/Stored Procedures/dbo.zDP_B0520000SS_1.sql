SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0520000SS_1] (@VENDORID char(15), @BSSI_Investment_Number char(21), @YEAR1 smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  VENDORID, BSSI_Investment_Number, YEAR1, BSSI_Units_Year_End, BSSI_Begining_Capital, BSSI_Capital_Contrib, BSSI_Withdrawals, BSSI_Income, BSSI_Ending_Capital, DEX_ROW_ID FROM .B0520000 WHERE VENDORID = @VENDORID AND BSSI_Investment_Number = @BSSI_Investment_Number AND YEAR1 = @YEAR1 ORDER BY VENDORID ASC, BSSI_Investment_Number ASC, YEAR1 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0520000SS_1] TO [DYNGRP]
GO
