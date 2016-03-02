SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00100F_2] (@DSCRIPTN_RS char(31), @GROUPID_RS char(15), @DSCRIPTN_RE char(31), @GROUPID_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 ORDER BY DSCRIPTN ASC, GROUPID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE DSCRIPTN = @DSCRIPTN_RS AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE ORDER BY DSCRIPTN ASC, GROUPID ASC END ELSE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE ORDER BY DSCRIPTN ASC, GROUPID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00100F_2] TO [DYNGRP]
GO
