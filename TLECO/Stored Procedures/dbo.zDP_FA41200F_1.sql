SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41200F_1] (@INSCLASSINDX_RS int, @INSCLASSINDX_RE int) AS  set nocount on IF @INSCLASSINDX_RS IS NULL BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 ORDER BY INSCLASSINDX ASC END ELSE IF @INSCLASSINDX_RS = @INSCLASSINDX_RE BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE INSCLASSINDX = @INSCLASSINDX_RS ORDER BY INSCLASSINDX ASC END ELSE BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE INSCLASSINDX BETWEEN @INSCLASSINDX_RS AND @INSCLASSINDX_RE ORDER BY INSCLASSINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41200F_1] TO [DYNGRP]
GO
