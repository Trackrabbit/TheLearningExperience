SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40600SI] (@CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @WinTechName char(81), @Optional tinyint, @HelpChmFile char(81), @HelpTopic char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY40600 (CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, WinTechName, Optional, HelpChmFile, HelpTopic) VALUES ( @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @CmdSequence, @CmdDictID, @CmdFormID, @CmdID, @WinTechName, @Optional, @HelpChmFile, @HelpTopic) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40600SI] TO [DYNGRP]
GO
