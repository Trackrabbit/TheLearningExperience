SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27603N_1] (@BS int, @ME_Logo_ID char(15), @ME_Logo_ID_RS char(15), @ME_Logo_ID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @ME_Logo_ID_RS IS NULL BEGIN SELECT TOP 25  ME_Logo_ID, ME_Filename, ME_Scaling, DEX_ROW_ID FROM .ME27603 WHERE ( ME_Logo_ID > @ME_Logo_ID ) ORDER BY ME_Logo_ID ASC END ELSE IF @ME_Logo_ID_RS = @ME_Logo_ID_RE BEGIN SELECT TOP 25  ME_Logo_ID, ME_Filename, ME_Scaling, DEX_ROW_ID FROM .ME27603 WHERE ME_Logo_ID = @ME_Logo_ID_RS AND ( ME_Logo_ID > @ME_Logo_ID ) ORDER BY ME_Logo_ID ASC END ELSE BEGIN SELECT TOP 25  ME_Logo_ID, ME_Filename, ME_Scaling, DEX_ROW_ID FROM .ME27603 WHERE ME_Logo_ID BETWEEN @ME_Logo_ID_RS AND @ME_Logo_ID_RE AND ( ME_Logo_ID > @ME_Logo_ID ) ORDER BY ME_Logo_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27603N_1] TO [DYNGRP]
GO