SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04703N_1] (@BS int, @Manager_ID char(81), @Manager_ID_RS char(81), @Manager_ID_RE char(81)) AS  set nocount on IF @Manager_ID_RS IS NULL BEGIN SELECT TOP 25  Manager_ID, DEX_ROW_ID FROM .SY04703 WHERE ( Manager_ID > @Manager_ID ) ORDER BY Manager_ID ASC END ELSE IF @Manager_ID_RS = @Manager_ID_RE BEGIN SELECT TOP 25  Manager_ID, DEX_ROW_ID FROM .SY04703 WHERE Manager_ID = @Manager_ID_RS AND ( Manager_ID > @Manager_ID ) ORDER BY Manager_ID ASC END ELSE BEGIN SELECT TOP 25  Manager_ID, DEX_ROW_ID FROM .SY04703 WHERE Manager_ID BETWEEN @Manager_ID_RS AND @Manager_ID_RE AND ( Manager_ID > @Manager_ID ) ORDER BY Manager_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04703N_1] TO [DYNGRP]
GO
