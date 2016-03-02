SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07222SS_1] (@USERID char(15), @ListDictID smallint, @ListID smallint, @CmdSequence smallint, @ViewID int) AS  set nocount on SELECT TOP 1  USERID, ListDictID, ListID, CmdSequence, ViewID, DEX_ROW_ID FROM .SY07222 WHERE USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence = @CmdSequence AND ViewID = @ViewID ORDER BY USERID ASC, ListDictID ASC, ListID ASC, CmdSequence ASC, ViewID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07222SS_1] TO [DYNGRP]
GO
