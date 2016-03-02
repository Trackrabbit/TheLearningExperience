SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40300N_1] (@BS int, @USERID char(15), @USERID_RS char(15), @USERID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BOOKIDARRAY_1, BOOKIDARRAY_2, BOOKIDARRAY_3, DEX_ROW_ID FROM .FA40300 WHERE ( USERID > @USERID ) ORDER BY USERID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BOOKIDARRAY_1, BOOKIDARRAY_2, BOOKIDARRAY_3, DEX_ROW_ID FROM .FA40300 WHERE USERID = @USERID_RS AND ( USERID > @USERID ) ORDER BY USERID ASC END ELSE BEGIN SELECT TOP 25  USERID, BOOKIDARRAY_1, BOOKIDARRAY_2, BOOKIDARRAY_3, DEX_ROW_ID FROM .FA40300 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USERID > @USERID ) ORDER BY USERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40300N_1] TO [DYNGRP]
GO
