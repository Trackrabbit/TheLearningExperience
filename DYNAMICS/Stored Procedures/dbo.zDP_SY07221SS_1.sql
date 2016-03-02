SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07221SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int, @ViewAccessType smallint, @IDValue smallint, @USERID char(15)) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, ViewAccessType, IDValue, USERID, IsEditable, DEX_ROW_ID FROM .SY07221 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND ViewAccessType = @ViewAccessType AND IDValue = @IDValue AND USERID = @USERID ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, ViewAccessType ASC, IDValue ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07221SS_1] TO [DYNGRP]
GO
