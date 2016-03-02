SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP09L_2] (@SKILLNUMBER_I_RS smallint, @APPLICANTNUMBER_I_RS numeric(19,5), @SKILLNUMBER_I_RE smallint, @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @SKILLNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SKILLNUMBER_I, POINTS_I, COMMENT20_I, DEX_ROW_ID FROM .AHR2AP09 ORDER BY SKILLNUMBER_I DESC, APPLICANTNUMBER_I DESC END ELSE IF @SKILLNUMBER_I_RS = @SKILLNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SKILLNUMBER_I, POINTS_I, COMMENT20_I, DEX_ROW_ID FROM .AHR2AP09 WHERE SKILLNUMBER_I = @SKILLNUMBER_I_RS AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY SKILLNUMBER_I DESC, APPLICANTNUMBER_I DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, SKILLNUMBER_I, POINTS_I, COMMENT20_I, DEX_ROW_ID FROM .AHR2AP09 WHERE SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY SKILLNUMBER_I DESC, APPLICANTNUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP09L_2] TO [DYNGRP]
GO
