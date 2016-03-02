SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000013F_2] (@PP_Profile_Name_RS char(21), @DistRef_RS char(31), @PP_Profile_Name_RE char(21), @DistRef_RE char(31)) AS  set nocount on IF @PP_Profile_Name_RS IS NULL BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 ORDER BY PP_Profile_Name ASC, DistRef ASC END ELSE IF @PP_Profile_Name_RS = @PP_Profile_Name_RE BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE PP_Profile_Name = @PP_Profile_Name_RS AND DistRef BETWEEN @DistRef_RS AND @DistRef_RE ORDER BY PP_Profile_Name ASC, DistRef ASC END ELSE BEGIN SELECT TOP 25  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE PP_Profile_Name BETWEEN @PP_Profile_Name_RS AND @PP_Profile_Name_RE AND DistRef BETWEEN @DistRef_RS AND @DistRef_RE ORDER BY PP_Profile_Name ASC, DistRef ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000013F_2] TO [DYNGRP]
GO
