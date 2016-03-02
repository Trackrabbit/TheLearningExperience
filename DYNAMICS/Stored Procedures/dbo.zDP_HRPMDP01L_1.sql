SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDP01L_1] (@DEPARTMENTCODE_I_RS char(7), @COMPANYCODE_I_RS char(7), @DEPARTMENTCODE_I_RE char(7), @COMPANYCODE_I_RE char(7)) AS  set nocount on IF @DEPARTMENTCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 ORDER BY DEPARTMENTCODE_I DESC, COMPANYCODE_I DESC END ELSE IF @DEPARTMENTCODE_I_RS = @DEPARTMENTCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE DEPARTMENTCODE_I = @DEPARTMENTCODE_I_RS AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE ORDER BY DEPARTMENTCODE_I DESC, COMPANYCODE_I DESC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE ORDER BY DEPARTMENTCODE_I DESC, COMPANYCODE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDP01L_1] TO [DYNGRP]
GO