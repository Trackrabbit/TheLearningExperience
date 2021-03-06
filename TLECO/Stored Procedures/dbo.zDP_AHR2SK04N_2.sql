SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2SK04N_2] (@BS int, @SKILLSETNUMBER_I int, @EMPID_I char(15), @SKILLSETNUMBER_I_RS int, @EMPID_I_RS char(15), @SKILLSETNUMBER_I_RE int, @EMPID_I_RE char(15)) AS  set nocount on IF @SKILLSETNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE ( SKILLSETNUMBER_I = @SKILLSETNUMBER_I AND EMPID_I > @EMPID_I OR SKILLSETNUMBER_I > @SKILLSETNUMBER_I ) ORDER BY SKILLSETNUMBER_I ASC, EMPID_I ASC END ELSE IF @SKILLSETNUMBER_I_RS = @SKILLSETNUMBER_I_RE BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE SKILLSETNUMBER_I = @SKILLSETNUMBER_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( SKILLSETNUMBER_I = @SKILLSETNUMBER_I AND EMPID_I > @EMPID_I OR SKILLSETNUMBER_I > @SKILLSETNUMBER_I ) ORDER BY SKILLSETNUMBER_I ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( SKILLSETNUMBER_I = @SKILLSETNUMBER_I AND EMPID_I > @EMPID_I OR SKILLSETNUMBER_I > @SKILLSETNUMBER_I ) ORDER BY SKILLSETNUMBER_I ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2SK04N_2] TO [DYNGRP]
GO
