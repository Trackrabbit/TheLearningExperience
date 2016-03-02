SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMLC01UN_2] (@BS int, @LOCATION_I char(31), @COMPANYCODE_I char(7), @LOCATION_I_RS char(31), @COMPANYCODE_I_RS char(7), @LOCATION_I_RE char(31), @COMPANYCODE_I_RE char(7)) AS  set nocount on IF @LOCATION_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, LOCCODE_I, LOCATION_I, DEX_ROW_ID FROM .HRPMLC01 WHERE ( LOCATION_I = @LOCATION_I AND COMPANYCODE_I > @COMPANYCODE_I OR LOCATION_I > @LOCATION_I ) ORDER BY LOCATION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @LOCATION_I_RS = @LOCATION_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, LOCCODE_I, LOCATION_I, DEX_ROW_ID FROM .HRPMLC01 WHERE LOCATION_I = @LOCATION_I_RS AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND ( LOCATION_I = @LOCATION_I AND COMPANYCODE_I > @COMPANYCODE_I OR LOCATION_I > @LOCATION_I ) ORDER BY LOCATION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, LOCCODE_I, LOCATION_I, DEX_ROW_ID FROM .HRPMLC01 WHERE LOCATION_I BETWEEN @LOCATION_I_RS AND @LOCATION_I_RE AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND ( LOCATION_I = @LOCATION_I AND COMPANYCODE_I > @COMPANYCODE_I OR LOCATION_I > @LOCATION_I ) ORDER BY LOCATION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMLC01UN_2] TO [DYNGRP]
GO
