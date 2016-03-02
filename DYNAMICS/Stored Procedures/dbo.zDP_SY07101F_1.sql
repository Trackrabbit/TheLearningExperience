SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07101F_1] (@CmdDictID_RS smallint, @CmdFormID_RS smallint, @CmdID_RS smallint, @CmdSequence_RS smallint, @CmdDictID_RE smallint, @CmdFormID_RE smallint, @CmdID_RE smallint, @CmdSequence_RE smallint) AS  set nocount on IF @CmdDictID_RS IS NULL BEGIN SELECT TOP 25  CmdDictID, CmdFormID, CmdID, CmdSequence, DICTID, RESTYPE, RESID, DEX_ROW_ID FROM .SY07101 ORDER BY CmdDictID ASC, CmdFormID ASC, CmdID ASC, CmdSequence ASC END ELSE IF @CmdDictID_RS = @CmdDictID_RE BEGIN SELECT TOP 25  CmdDictID, CmdFormID, CmdID, CmdSequence, DICTID, RESTYPE, RESID, DEX_ROW_ID FROM .SY07101 WHERE CmdDictID = @CmdDictID_RS AND CmdFormID BETWEEN @CmdFormID_RS AND @CmdFormID_RE AND CmdID BETWEEN @CmdID_RS AND @CmdID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY CmdDictID ASC, CmdFormID ASC, CmdID ASC, CmdSequence ASC END ELSE BEGIN SELECT TOP 25  CmdDictID, CmdFormID, CmdID, CmdSequence, DICTID, RESTYPE, RESID, DEX_ROW_ID FROM .SY07101 WHERE CmdDictID BETWEEN @CmdDictID_RS AND @CmdDictID_RE AND CmdFormID BETWEEN @CmdFormID_RS AND @CmdFormID_RE AND CmdID BETWEEN @CmdID_RS AND @CmdID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY CmdDictID ASC, CmdFormID ASC, CmdID ASC, CmdSequence ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07101F_1] TO [DYNGRP]
GO
