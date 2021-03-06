SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41600F_1] (@CMPANYID_RS smallint, @CMPANYID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, Count1, DEX_ROW_ID FROM .UPR41600 ORDER BY CMPANYID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, Count1, DEX_ROW_ID FROM .UPR41600 WHERE CMPANYID = @CMPANYID_RS ORDER BY CMPANYID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, Count1, DEX_ROW_ID FROM .UPR41600 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41600F_1] TO [DYNGRP]
GO
