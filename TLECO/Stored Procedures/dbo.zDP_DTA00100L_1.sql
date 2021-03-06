SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00100L_1] (@GROUPID_RS char(15), @GROUPID_RE char(15)) AS  set nocount on IF @GROUPID_RS IS NULL BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 ORDER BY GROUPID DESC END ELSE IF @GROUPID_RS = @GROUPID_RE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE GROUPID = @GROUPID_RS ORDER BY GROUPID DESC END ELSE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE ORDER BY GROUPID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00100L_1] TO [DYNGRP]
GO
