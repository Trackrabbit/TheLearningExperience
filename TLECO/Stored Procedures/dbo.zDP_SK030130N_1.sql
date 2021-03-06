SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK030130N_1] (@BS int, @EMPID_I char(15), @SKILLNUMBER_I smallint, @EMPID_I_RS char(15), @SKILLNUMBER_I_RS smallint, @EMPID_I_RE char(15), @SKILLNUMBER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I, DEX_ROW_ID FROM .SK030130 WHERE ( EMPID_I = @EMPID_I AND SKILLNUMBER_I > @SKILLNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, SKILLNUMBER_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I, DEX_ROW_ID FROM .SK030130 WHERE EMPID_I = @EMPID_I_RS AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND SKILLNUMBER_I > @SKILLNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, SKILLNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I, DEX_ROW_ID FROM .SK030130 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND SKILLNUMBER_I > @SKILLNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, SKILLNUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK030130N_1] TO [DYNGRP]
GO
