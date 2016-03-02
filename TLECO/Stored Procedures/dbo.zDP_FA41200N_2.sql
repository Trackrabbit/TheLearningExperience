SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41200N_2] (@BS int, @INSCLASSID char(15), @INSCLASSID_RS char(15), @INSCLASSID_RE char(15)) AS  set nocount on IF @INSCLASSID_RS IS NULL BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE ( INSCLASSID > @INSCLASSID ) ORDER BY INSCLASSID ASC END ELSE IF @INSCLASSID_RS = @INSCLASSID_RE BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE INSCLASSID = @INSCLASSID_RS AND ( INSCLASSID > @INSCLASSID ) ORDER BY INSCLASSID ASC END ELSE BEGIN SELECT TOP 25  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE INSCLASSID BETWEEN @INSCLASSID_RS AND @INSCLASSID_RE AND ( INSCLASSID > @INSCLASSID ) ORDER BY INSCLASSID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41200N_2] TO [DYNGRP]
GO