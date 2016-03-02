SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2SKL06F_3] (@SKILLNUMBER_I_RS smallint, @SKILLSETNUMBER_I_RS int, @SKILLNUMBER_I_RE smallint, @SKILLSETNUMBER_I_RE int) AS  set nocount on IF @SKILLNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 ORDER BY SKILLNUMBER_I ASC, SKILLSETNUMBER_I ASC END ELSE IF @SKILLNUMBER_I_RS = @SKILLNUMBER_I_RE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLNUMBER_I = @SKILLNUMBER_I_RS AND SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE ORDER BY SKILLNUMBER_I ASC, SKILLSETNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE AND SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE ORDER BY SKILLNUMBER_I ASC, SKILLSETNUMBER_I ASC END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SKL06F_3] TO [DYNGRP]
GO
