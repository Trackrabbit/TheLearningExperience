SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07240SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @Priority smallint, @ButtonSize smallint, @CmdCaption char(79), @Visible tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07240 (ListDictID, ListID, ViewID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Priority, ButtonSize, CmdCaption, Visible) VALUES ( @ListDictID, @ListID, @ViewID, @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @CmdSequence, @CmdDictID, @CmdFormID, @CmdID, @Priority, @ButtonSize, @CmdCaption, @Visible) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07240SI] TO [DYNGRP]
GO
