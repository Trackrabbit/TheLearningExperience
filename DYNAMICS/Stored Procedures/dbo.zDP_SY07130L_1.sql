SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07130L_1] (@USERID_RS char(15), @CmdSequence_RS smallint, @USERID_RE char(15), @CmdSequence_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CmdSequence, Visible, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdDictID, CmdFormID, CmdID, DEX_ROW_ID FROM .SY07130 ORDER BY USERID DESC, CmdSequence DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CmdSequence, Visible, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdDictID, CmdFormID, CmdID, DEX_ROW_ID FROM .SY07130 WHERE USERID = @USERID_RS AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY USERID DESC, CmdSequence DESC END ELSE BEGIN SELECT TOP 25  USERID, CmdSequence, Visible, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdDictID, CmdFormID, CmdID, DEX_ROW_ID FROM .SY07130 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY USERID DESC, CmdSequence DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07130L_1] TO [DYNGRP]
GO
