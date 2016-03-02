SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250SI] (@USERID char(15), @ListDictID smallint, @ListID smallint, @ViewID int, @ActionID int, @DATE1 datetime, @TIME1 datetime, @ActionName char(79), @SuccessCount int, @FailureCount int, @ActionStatusID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07250 (USERID, ListDictID, ListID, ViewID, ActionID, DATE1, TIME1, ActionName, SuccessCount, FailureCount, ActionStatusID) VALUES ( @USERID, @ListDictID, @ListID, @ViewID, @ActionID, @DATE1, @TIME1, @ActionName, @SuccessCount, @FailureCount, @ActionStatusID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250SI] TO [DYNGRP]
GO
