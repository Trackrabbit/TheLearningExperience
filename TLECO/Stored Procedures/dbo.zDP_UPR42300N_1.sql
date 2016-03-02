SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42300N_1] (@BS int, @ASSIGNMENTCODE char(15), @ASSIGNMENTCODE_RS char(15), @ASSIGNMENTCODE_RE char(15)) AS  set nocount on IF @ASSIGNMENTCODE_RS IS NULL BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE ( ASSIGNMENTCODE > @ASSIGNMENTCODE ) ORDER BY ASSIGNMENTCODE ASC END ELSE IF @ASSIGNMENTCODE_RS = @ASSIGNMENTCODE_RE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE ASSIGNMENTCODE = @ASSIGNMENTCODE_RS AND ( ASSIGNMENTCODE > @ASSIGNMENTCODE ) ORDER BY ASSIGNMENTCODE ASC END ELSE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE ASSIGNMENTCODE BETWEEN @ASSIGNMENTCODE_RS AND @ASSIGNMENTCODE_RE AND ( ASSIGNMENTCODE > @ASSIGNMENTCODE ) ORDER BY ASSIGNMENTCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42300N_1] TO [DYNGRP]
GO
