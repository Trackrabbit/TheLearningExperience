SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2SKL06L_1] (@SKILLSETNUMBER_I_RS int, @SKILLNUMBER_I_RS smallint, @SKILLSETNUMBER_I_RE int, @SKILLNUMBER_I_RE smallint) AS  set nocount on IF @SKILLSETNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 ORDER BY SKILLSETNUMBER_I DESC, SKILLNUMBER_I DESC END ELSE IF @SKILLSETNUMBER_I_RS = @SKILLSETNUMBER_I_RE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLSETNUMBER_I = @SKILLSETNUMBER_I_RS AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE ORDER BY SKILLSETNUMBER_I DESC, SKILLNUMBER_I DESC END ELSE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE ORDER BY SKILLSETNUMBER_I DESC, SKILLNUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SKL06L_1] TO [DYNGRP]
GO