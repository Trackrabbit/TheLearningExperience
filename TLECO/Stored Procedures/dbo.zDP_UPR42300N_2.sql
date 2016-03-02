SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42300N_2] (@BS int, @DSCRIPTN char(31), @ASSIGNMENTCODE char(15), @DSCRIPTN_RS char(31), @ASSIGNMENTCODE_RS char(15), @DSCRIPTN_RE char(31), @ASSIGNMENTCODE_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE ( DSCRIPTN = @DSCRIPTN AND ASSIGNMENTCODE > @ASSIGNMENTCODE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, ASSIGNMENTCODE ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE DSCRIPTN = @DSCRIPTN_RS AND ASSIGNMENTCODE BETWEEN @ASSIGNMENTCODE_RS AND @ASSIGNMENTCODE_RE AND ( DSCRIPTN = @DSCRIPTN AND ASSIGNMENTCODE > @ASSIGNMENTCODE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, ASSIGNMENTCODE ASC END ELSE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND ASSIGNMENTCODE BETWEEN @ASSIGNMENTCODE_RS AND @ASSIGNMENTCODE_RE AND ( DSCRIPTN = @DSCRIPTN AND ASSIGNMENTCODE > @ASSIGNMENTCODE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, ASSIGNMENTCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42300N_2] TO [DYNGRP]
GO