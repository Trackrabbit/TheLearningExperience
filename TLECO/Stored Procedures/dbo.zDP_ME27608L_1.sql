SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27608L_1] (@ME_Cancel_Password_RS char(11), @ME_Cancel_Password_RE char(11)) AS /* 14.00.0084.000 */ set nocount on IF @ME_Cancel_Password_RS IS NULL BEGIN SELECT TOP 25  ME_Cancel_Password, DEX_ROW_ID FROM .ME27608 ORDER BY ME_Cancel_Password DESC END ELSE IF @ME_Cancel_Password_RS = @ME_Cancel_Password_RE BEGIN SELECT TOP 25  ME_Cancel_Password, DEX_ROW_ID FROM .ME27608 WHERE ME_Cancel_Password = @ME_Cancel_Password_RS ORDER BY ME_Cancel_Password DESC END ELSE BEGIN SELECT TOP 25  ME_Cancel_Password, DEX_ROW_ID FROM .ME27608 WHERE ME_Cancel_Password BETWEEN @ME_Cancel_Password_RS AND @ME_Cancel_Password_RE ORDER BY ME_Cancel_Password DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27608L_1] TO [DYNGRP]
GO