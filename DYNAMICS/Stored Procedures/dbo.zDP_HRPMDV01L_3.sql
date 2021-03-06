SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDV01L_3] (@COMPANYCODE_I_RS char(7), @DIVISION_I_RS char(31), @COMPANYCODE_I_RE char(7), @DIVISION_I_RE char(31)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 ORDER BY COMPANYCODE_I DESC, DIVISION_I DESC, DEX_ROW_ID DESC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISION_I BETWEEN @DIVISION_I_RS AND @DIVISION_I_RE ORDER BY COMPANYCODE_I DESC, DIVISION_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISION_I BETWEEN @DIVISION_I_RS AND @DIVISION_I_RE ORDER BY COMPANYCODE_I DESC, DIVISION_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDV01L_3] TO [DYNGRP]
GO
