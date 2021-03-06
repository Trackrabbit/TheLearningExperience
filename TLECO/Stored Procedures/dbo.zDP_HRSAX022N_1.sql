SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX022N_1] (@BS int, @TABLE_I smallint, @TABLE_I_RS smallint, @TABLE_I_RE smallint) AS  set nocount on IF @TABLE_I_RS IS NULL BEGIN SELECT TOP 25  TABLE_I, DSCRIPTN, COMPENSATIONPERIOD_I, DEX_ROW_ID FROM .HRSAX022 WHERE ( TABLE_I > @TABLE_I ) ORDER BY TABLE_I ASC END ELSE IF @TABLE_I_RS = @TABLE_I_RE BEGIN SELECT TOP 25  TABLE_I, DSCRIPTN, COMPENSATIONPERIOD_I, DEX_ROW_ID FROM .HRSAX022 WHERE TABLE_I = @TABLE_I_RS AND ( TABLE_I > @TABLE_I ) ORDER BY TABLE_I ASC END ELSE BEGIN SELECT TOP 25  TABLE_I, DSCRIPTN, COMPENSATIONPERIOD_I, DEX_ROW_ID FROM .HRSAX022 WHERE TABLE_I BETWEEN @TABLE_I_RS AND @TABLE_I_RE AND ( TABLE_I > @TABLE_I ) ORDER BY TABLE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX022N_1] TO [DYNGRP]
GO
