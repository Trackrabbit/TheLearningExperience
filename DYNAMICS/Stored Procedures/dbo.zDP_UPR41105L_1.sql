SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41105L_1] (@CCode_RS char(7), @CCode_RE char(7)) AS  set nocount on IF @CCode_RS IS NULL BEGIN SELECT TOP 25  CCode, CCodeDesc, DEX_ROW_ID FROM .UPR41105 ORDER BY CCode DESC END ELSE IF @CCode_RS = @CCode_RE BEGIN SELECT TOP 25  CCode, CCodeDesc, DEX_ROW_ID FROM .UPR41105 WHERE CCode = @CCode_RS ORDER BY CCode DESC END ELSE BEGIN SELECT TOP 25  CCode, CCodeDesc, DEX_ROW_ID FROM .UPR41105 WHERE CCode BETWEEN @CCode_RS AND @CCode_RE ORDER BY CCode DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41105L_1] TO [DYNGRP]
GO
