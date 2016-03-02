SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00902SS_1] (@EMPLOYID char(15), @YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  EMPLOYID, YEAR1, PERIODID, LPCHKNUM, LSTPCKDT, LPCHKAMT, Gross_Wages_Fiscal, Federal_Withholding_Fisc, FICASS_Wages_Fiscal, FICAMED_Wages_Fiscal, FICASS_Withholding_Fisca, FICAMED_Withholding_Fisc, Suta_Wages_Fiscal, Futa_Wages_Fiscal, Net_Wages_Fiscal, Federal_Wages_Fiscal, DEX_ROW_ID FROM .UPR00902 WHERE EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY EMPLOYID ASC, YEAR1 ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00902SS_1] TO [DYNGRP]
GO
