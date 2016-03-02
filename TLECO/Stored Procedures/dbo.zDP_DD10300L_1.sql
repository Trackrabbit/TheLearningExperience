SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10300L_1] (@INDXLONG_RS int, @EMPLOYID_RS char(15), @DDArrayIndex_RS smallint, @INDXLONG_RE int, @EMPLOYID_RE char(15), @DDArrayIndex_RE smallint) AS  set nocount on IF @INDXLONG_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, DDArrayIndex, DDITEM, DDIndex, DEX_ROW_ID FROM .DD10300 ORDER BY INDXLONG DESC, EMPLOYID DESC, DDArrayIndex DESC END ELSE IF @INDXLONG_RS = @INDXLONG_RE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, DDArrayIndex, DDITEM, DDIndex, DEX_ROW_ID FROM .DD10300 WHERE INDXLONG = @INDXLONG_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DDArrayIndex BETWEEN @DDArrayIndex_RS AND @DDArrayIndex_RE ORDER BY INDXLONG DESC, EMPLOYID DESC, DDArrayIndex DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, DDArrayIndex, DDITEM, DDIndex, DEX_ROW_ID FROM .DD10300 WHERE INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DDArrayIndex BETWEEN @DDArrayIndex_RS AND @DDArrayIndex_RE ORDER BY INDXLONG DESC, EMPLOYID DESC, DDArrayIndex DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10300L_1] TO [DYNGRP]
GO
