SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMPS01N_4] (@BS int, @COMPANYCODE_I char(7), @POSITIONCODE_I char(7), @COMPANYCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @COMPANYCODE_I_RE char(7), @POSITIONCODE_I_RE char(7)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE ( COMPANYCODE_I = @COMPANYCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, POSITIONCODE_I ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, POSITIONCODE_I ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, POSITIONCODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMPS01N_4] TO [DYNGRP]
GO
