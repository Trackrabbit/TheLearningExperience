SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07220SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, ViewName, CompanyVisibility, IsShared, RoleSharing, UserSharing, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DefaultViewID, DEX_ROW_ID FROM .SY07220 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID ORDER BY ListDictID ASC, ListID ASC, ViewID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07220SS_1] TO [DYNGRP]
GO
