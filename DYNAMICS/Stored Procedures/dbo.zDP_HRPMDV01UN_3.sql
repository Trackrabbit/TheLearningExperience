SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDV01UN_3] (@BS int, @COMPANYCODE_I char(7), @DIVISION_I char(31), @COMPANYCODE_I_RS char(7), @DIVISION_I_RS char(31), @COMPANYCODE_I_RE char(7), @DIVISION_I_RE char(31)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISION_I > @DIVISION_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISION_I ASC, DEX_ROW_ID ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISION_I BETWEEN @DIVISION_I_RS AND @DIVISION_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISION_I > @DIVISION_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISION_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISION_I BETWEEN @DIVISION_I_RS AND @DIVISION_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISION_I > @DIVISION_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISION_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDV01UN_3] TO [DYNGRP]
GO
