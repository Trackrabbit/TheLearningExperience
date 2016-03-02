SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000032UN_2] (@BS int, @PP_Profile_Name char(21), @PP_Profile_Name_RS char(21), @PP_Profile_Name_RE char(21)) AS  set nocount on IF @PP_Profile_Name_RS IS NULL BEGIN SELECT TOP 25  USERID, PP_Profile_Name, DEX_ROW_ID FROM .PP000032 WHERE ( PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, DEX_ROW_ID ASC END ELSE IF @PP_Profile_Name_RS = @PP_Profile_Name_RE BEGIN SELECT TOP 25  USERID, PP_Profile_Name, DEX_ROW_ID FROM .PP000032 WHERE PP_Profile_Name = @PP_Profile_Name_RS AND ( PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, PP_Profile_Name, DEX_ROW_ID FROM .PP000032 WHERE PP_Profile_Name BETWEEN @PP_Profile_Name_RS AND @PP_Profile_Name_RE AND ( PP_Profile_Name > @PP_Profile_Name ) ORDER BY PP_Profile_Name ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000032UN_2] TO [DYNGRP]
GO
