SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07101SI] (@CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @CmdSequence smallint, @DICTID smallint, @RESTYPE smallint, @RESID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07101 (CmdDictID, CmdFormID, CmdID, CmdSequence, DICTID, RESTYPE, RESID) VALUES ( @CmdDictID, @CmdFormID, @CmdID, @CmdSequence, @DICTID, @RESTYPE, @RESID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07101SI] TO [DYNGRP]
GO
