SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07220F_1] (@ListDictID_RS smallint, @ListID_RS smallint, @ViewID_RS int, @ListDictID_RE smallint, @ListID_RE smallint, @ViewID_RE int) AS  set nocount on IF @ListDictID_RS IS NULL BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, ViewName, CompanyVisibility, IsShared, RoleSharing, UserSharing, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DefaultViewID, DEX_ROW_ID FROM .SY07220 ORDER BY ListDictID ASC, ListID ASC, ViewID ASC END ELSE IF @ListDictID_RS = @ListDictID_RE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, ViewName, CompanyVisibility, IsShared, RoleSharing, UserSharing, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DefaultViewID, DEX_ROW_ID FROM .SY07220 WHERE ListDictID = @ListDictID_RS AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE ORDER BY ListDictID ASC, ListID ASC, ViewID ASC END ELSE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, ViewName, CompanyVisibility, IsShared, RoleSharing, UserSharing, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DefaultViewID, DEX_ROW_ID FROM .SY07220 WHERE ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE ORDER BY ListDictID ASC, ListID ASC, ViewID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07220F_1] TO [DYNGRP]
GO
