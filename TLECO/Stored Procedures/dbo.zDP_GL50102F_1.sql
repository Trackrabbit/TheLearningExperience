SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50102F_1] (@JRNENTRY_RS int, @JRNENTRY_RE int) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, TRXSORCE, USERID, BACHNUMB, BCHSOURC, RVTRXSRC, DEX_ROW_ID FROM .GL50102 ORDER BY JRNENTRY ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, TRXSORCE, USERID, BACHNUMB, BCHSOURC, RVTRXSRC, DEX_ROW_ID FROM .GL50102 WHERE JRNENTRY = @JRNENTRY_RS ORDER BY JRNENTRY ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, TRXSORCE, USERID, BACHNUMB, BCHSOURC, RVTRXSRC, DEX_ROW_ID FROM .GL50102 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY JRNENTRY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50102F_1] TO [DYNGRP]
GO