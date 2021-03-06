SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10150F_1] (@POPNUMBE_RS char(17), @POPNUMBE_RE char(17)) AS  set nocount on IF @POPNUMBE_RS IS NULL BEGIN SELECT TOP 25  POPNUMBE, COMMNTID, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .POP10150 ORDER BY POPNUMBE ASC END ELSE IF @POPNUMBE_RS = @POPNUMBE_RE BEGIN SELECT TOP 25  POPNUMBE, COMMNTID, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .POP10150 WHERE POPNUMBE = @POPNUMBE_RS ORDER BY POPNUMBE ASC END ELSE BEGIN SELECT TOP 25  POPNUMBE, COMMNTID, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .POP10150 WHERE POPNUMBE BETWEEN @POPNUMBE_RS AND @POPNUMBE_RE ORDER BY POPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10150F_1] TO [DYNGRP]
GO
