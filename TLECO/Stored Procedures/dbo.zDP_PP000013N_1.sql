SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000013N_1] (@BS int, @PP_Profile_Name char(21), @SEQNUMBR int, @PP_Profile_Name_RS char(21), @SEQNUMBR_RS int, @PP_Profile_Name_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @PP_Profile_Name_RS IS NULL BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE ( PP_Profile_Name = @PP_Profile_Name AND SEQNUMBR > @SEQNUMBR OR PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, SEQNUMBR ASC END ELSE IF @PP_Profile_Name_RS = @PP_Profile_Name_RE BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE PP_Profile_Name = @PP_Profile_Name_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PP_Profile_Name = @PP_Profile_Name AND SEQNUMBR > @SEQNUMBR OR PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE PP_Profile_Name BETWEEN @PP_Profile_Name_RS AND @PP_Profile_Name_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PP_Profile_Name = @PP_Profile_Name AND SEQNUMBR > @SEQNUMBR OR PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000013N_1] TO [DYNGRP]
GO
