SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07105SI] (@USERID char(15), @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @CmdCaption char(79), @CmdTooltip char(79), @CmdNormalImageType smallint, @CmdNormalImageDictID smallint, @CmdNormalImageResID smallint, @CmdCheckedImageType smallint, @CmdCheckedImageDictID smallint, @CmdCheckedImageResID smallint, @CmdMenuDisplayOption smallint, @CmdButtonDisplayOption smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07105 (USERID, CmdDictID, CmdFormID, CmdID, CmdCaption, CmdTooltip, CmdNormalImageType, CmdNormalImageDictID, CmdNormalImageResID, CmdCheckedImageType, CmdCheckedImageDictID, CmdCheckedImageResID, CmdMenuDisplayOption, CmdButtonDisplayOption) VALUES ( @USERID, @CmdDictID, @CmdFormID, @CmdID, @CmdCaption, @CmdTooltip, @CmdNormalImageType, @CmdNormalImageDictID, @CmdNormalImageResID, @CmdCheckedImageType, @CmdCheckedImageDictID, @CmdCheckedImageResID, @CmdMenuDisplayOption, @CmdButtonDisplayOption) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07105SI] TO [DYNGRP]
GO
