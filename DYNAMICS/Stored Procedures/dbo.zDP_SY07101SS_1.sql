SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07101SS_1] (@CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @CmdSequence smallint) AS  set nocount on SELECT TOP 1  CmdDictID, CmdFormID, CmdID, CmdSequence, DICTID, RESTYPE, RESID, DEX_ROW_ID FROM .SY07101 WHERE CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID AND CmdSequence = @CmdSequence ORDER BY CmdDictID ASC, CmdFormID ASC, CmdID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07101SS_1] TO [DYNGRP]
GO
