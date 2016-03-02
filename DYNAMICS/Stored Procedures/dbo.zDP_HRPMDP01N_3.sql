SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDP01N_3] (@BS int, @COMPANYCODE_I char(7), @DEPARTMENTNAME_I char(31), @DEX_ROW_ID int, @COMPANYCODE_I_RS char(7), @DEPARTMENTNAME_I_RS char(31), @COMPANYCODE_I_RE char(7), @DEPARTMENTNAME_I_RE char(31)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE ( COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I = @DEPARTMENTNAME_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I > @DEPARTMENTNAME_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DEPARTMENTNAME_I ASC, DEX_ROW_ID ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DEPARTMENTNAME_I BETWEEN @DEPARTMENTNAME_I_RS AND @DEPARTMENTNAME_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I = @DEPARTMENTNAME_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I > @DEPARTMENTNAME_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DEPARTMENTNAME_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DEPARTMENTNAME_I BETWEEN @DEPARTMENTNAME_I_RS AND @DEPARTMENTNAME_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I = @DEPARTMENTNAME_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTNAME_I > @DEPARTMENTNAME_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DEPARTMENTNAME_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDP01N_3] TO [DYNGRP]
GO
