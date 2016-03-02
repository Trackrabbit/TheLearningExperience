SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HREMP662N_1] (@BS int, @EMPID_I char(15), @DATE1 datetime, @EMPID_I_RS char(15), @DATE1_RS datetime, @EMPID_I_RE char(15), @DATE1_RE datetime) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATE1, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, DEX_ROW_ID FROM .HREMP662 WHERE ( EMPID_I = @EMPID_I AND DATE1 > @DATE1 OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DATE1 ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, DATE1, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, DEX_ROW_ID FROM .HREMP662 WHERE EMPID_I = @EMPID_I_RS AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND ( EMPID_I = @EMPID_I AND DATE1 > @DATE1 OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DATE1 ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATE1, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, DEX_ROW_ID FROM .HREMP662 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND ( EMPID_I = @EMPID_I AND DATE1 > @DATE1 OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DATE1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HREMP662N_1] TO [DYNGRP]
GO