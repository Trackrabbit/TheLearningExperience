SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00307F_2] (@TECHID_RS char(11), @TECHID_RE char(11)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00307 ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  EQUIPID, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00307 WHERE TECHID = @TECHID_RS ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EQUIPID, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00307 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE ORDER BY TECHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00307F_2] TO [DYNGRP]
GO
