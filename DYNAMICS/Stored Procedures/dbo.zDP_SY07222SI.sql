SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07222SI] (@USERID char(15), @ListDictID smallint, @ListID smallint, @CmdSequence smallint, @ViewID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07222 (USERID, ListDictID, ListID, CmdSequence, ViewID) VALUES ( @USERID, @ListDictID, @ListID, @CmdSequence, @ViewID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07222SI] TO [DYNGRP]
GO
