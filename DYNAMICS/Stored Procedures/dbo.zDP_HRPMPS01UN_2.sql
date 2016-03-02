SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMPS01UN_2] (@BS int, @POSITION_I char(31), @COMPANYCODE_I char(7), @POSITION_I_RS char(31), @COMPANYCODE_I_RS char(7), @POSITION_I_RE char(31), @COMPANYCODE_I_RE char(7)) AS  set nocount on IF @POSITION_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE ( POSITION_I = @POSITION_I AND COMPANYCODE_I > @COMPANYCODE_I OR POSITION_I > @POSITION_I ) ORDER BY POSITION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @POSITION_I_RS = @POSITION_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE POSITION_I = @POSITION_I_RS AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND ( POSITION_I = @POSITION_I AND COMPANYCODE_I > @COMPANYCODE_I OR POSITION_I > @POSITION_I ) ORDER BY POSITION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, POSITIONCODE_I, POSITION_I, DEX_ROW_ID FROM .HRPMPS01 WHERE POSITION_I BETWEEN @POSITION_I_RS AND @POSITION_I_RE AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND ( POSITION_I = @POSITION_I AND COMPANYCODE_I > @COMPANYCODE_I OR POSITION_I > @POSITION_I ) ORDER BY POSITION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMPS01UN_2] TO [DYNGRP]
GO
