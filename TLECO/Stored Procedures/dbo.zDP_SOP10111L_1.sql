SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10111L_1] (@INSTRUCTIONID_RS char(15), @INSTRUCTIONID_RE char(15)) AS  set nocount on IF @INSTRUCTIONID_RS IS NULL BEGIN SELECT TOP 25  INSTRUCTIONID, NOTEINDX, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, PICKINGINSTRUCTION FROM .SOP10111 ORDER BY INSTRUCTIONID DESC END ELSE IF @INSTRUCTIONID_RS = @INSTRUCTIONID_RE BEGIN SELECT TOP 25  INSTRUCTIONID, NOTEINDX, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, PICKINGINSTRUCTION FROM .SOP10111 WHERE INSTRUCTIONID = @INSTRUCTIONID_RS ORDER BY INSTRUCTIONID DESC END ELSE BEGIN SELECT TOP 25  INSTRUCTIONID, NOTEINDX, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, PICKINGINSTRUCTION FROM .SOP10111 WHERE INSTRUCTIONID BETWEEN @INSTRUCTIONID_RS AND @INSTRUCTIONID_RE ORDER BY INSTRUCTIONID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10111L_1] TO [DYNGRP]
GO
