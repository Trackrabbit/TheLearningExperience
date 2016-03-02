SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42300L_3] (@Default_CB_RS tinyint, @ASSIGNMENTCODE_RS char(15), @Default_CB_RE tinyint, @ASSIGNMENTCODE_RE char(15)) AS  set nocount on IF @Default_CB_RS IS NULL BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 ORDER BY Default_CB DESC, ASSIGNMENTCODE DESC END ELSE IF @Default_CB_RS = @Default_CB_RE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE Default_CB = @Default_CB_RS AND ASSIGNMENTCODE BETWEEN @ASSIGNMENTCODE_RS AND @ASSIGNMENTCODE_RE ORDER BY Default_CB DESC, ASSIGNMENTCODE DESC END ELSE BEGIN SELECT TOP 25  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE Default_CB BETWEEN @Default_CB_RS AND @Default_CB_RE AND ASSIGNMENTCODE BETWEEN @ASSIGNMENTCODE_RS AND @ASSIGNMENTCODE_RE ORDER BY Default_CB DESC, ASSIGNMENTCODE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42300L_3] TO [DYNGRP]
GO
