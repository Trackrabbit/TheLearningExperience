SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC60200L_2] (@EXGTBLID_RS char(15), @CMPANYID_RS smallint, @EXGTBLID_RE char(15), @CMPANYID_RE smallint) AS  set nocount on IF @EXGTBLID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, EXGTBLID, INACTIVE, DEX_ROW_ID FROM .MC60200 ORDER BY EXGTBLID DESC, CMPANYID DESC END ELSE IF @EXGTBLID_RS = @EXGTBLID_RE BEGIN SELECT TOP 25  CMPANYID, EXGTBLID, INACTIVE, DEX_ROW_ID FROM .MC60200 WHERE EXGTBLID = @EXGTBLID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY EXGTBLID DESC, CMPANYID DESC END ELSE BEGIN SELECT TOP 25  CMPANYID, EXGTBLID, INACTIVE, DEX_ROW_ID FROM .MC60200 WHERE EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY EXGTBLID DESC, CMPANYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC60200L_2] TO [DYNGRP]
GO
