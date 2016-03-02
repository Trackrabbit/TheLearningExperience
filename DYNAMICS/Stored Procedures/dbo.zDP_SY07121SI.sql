SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07121SI] (@USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint, @Visible tinyint, @ROWNMBR smallint, @RowSequence smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07121 (USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, Visible, ROWNMBR, RowSequence) VALUES ( @USERID, @CmdBarDictID, @CmdBarFormID, @CmdBarWindowID, @Visible, @ROWNMBR, @RowSequence) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07121SI] TO [DYNGRP]
GO
