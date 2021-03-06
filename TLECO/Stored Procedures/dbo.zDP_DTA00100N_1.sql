SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00100N_1] (@BS int, @GROUPID char(15), @GROUPID_RS char(15), @GROUPID_RE char(15)) AS  set nocount on IF @GROUPID_RS IS NULL BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE ( GROUPID > @GROUPID ) ORDER BY GROUPID ASC END ELSE IF @GROUPID_RS = @GROUPID_RE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE GROUPID = @GROUPID_RS AND ( GROUPID > @GROUPID ) ORDER BY GROUPID ASC END ELSE BEGIN SELECT TOP 25  GROUPID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .DTA00100 WHERE GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND ( GROUPID > @GROUPID ) ORDER BY GROUPID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00100N_1] TO [DYNGRP]
GO
