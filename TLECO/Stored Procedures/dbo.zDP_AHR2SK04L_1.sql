SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2SK04L_1] (@EMPID_I_RS char(15), @SKILLSETNUMBER_I_RS int, @EMPID_I_RE char(15), @SKILLSETNUMBER_I_RE int) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 ORDER BY EMPID_I DESC, SKILLSETNUMBER_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE EMPID_I = @EMPID_I_RS AND SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE ORDER BY EMPID_I DESC, SKILLSETNUMBER_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE ORDER BY EMPID_I DESC, SKILLSETNUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2SK04L_1] TO [DYNGRP]
GO
