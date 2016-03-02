SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM40105L_1] (@USERID_RS char(15), @USERID_RE char(15)) AS set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, OptionSelected_1, OptionSelected_2, OptionSelected_3, OptionSelected_4, OptionSelected_5, OptionSelected_6, OptionSelected_7, OptionSelected_8, DEX_ROW_ID FROM .PM40105 ORDER BY USERID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, OptionSelected_1, OptionSelected_2, OptionSelected_3, OptionSelected_4, OptionSelected_5, OptionSelected_6, OptionSelected_7, OptionSelected_8, DEX_ROW_ID FROM .PM40105 WHERE USERID = @USERID_RS ORDER BY USERID DESC END ELSE BEGIN SELECT TOP 25  USERID, OptionSelected_1, OptionSelected_2, OptionSelected_3, OptionSelected_4, OptionSelected_5, OptionSelected_6, OptionSelected_7, OptionSelected_8, DEX_ROW_ID FROM .PM40105 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY USERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40105L_1] TO [DYNGRP]
GO
