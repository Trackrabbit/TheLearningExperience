SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX012L_5] (@TABLE_I_RS smallint, @TABLE_I_RE smallint) AS  set nocount on IF @TABLE_I_RS IS NULL BEGIN SELECT TOP 25  TABLE_I, ROW_I, COL_I, SALARYLOW_I, SALARYMED_I, SALARYHIGH_I, DEX_ROW_ID FROM .HRSAX012 ORDER BY TABLE_I DESC, DEX_ROW_ID DESC END ELSE IF @TABLE_I_RS = @TABLE_I_RE BEGIN SELECT TOP 25  TABLE_I, ROW_I, COL_I, SALARYLOW_I, SALARYMED_I, SALARYHIGH_I, DEX_ROW_ID FROM .HRSAX012 WHERE TABLE_I = @TABLE_I_RS ORDER BY TABLE_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TABLE_I, ROW_I, COL_I, SALARYLOW_I, SALARYMED_I, SALARYHIGH_I, DEX_ROW_ID FROM .HRSAX012 WHERE TABLE_I BETWEEN @TABLE_I_RS AND @TABLE_I_RE ORDER BY TABLE_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX012L_5] TO [DYNGRP]
GO
