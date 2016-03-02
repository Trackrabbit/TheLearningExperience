SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102SI] (@CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @Node_Data int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WDC51102 (CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data) VALUES ( @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @Node_Data) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102SI] TO [DYNGRP]
GO
