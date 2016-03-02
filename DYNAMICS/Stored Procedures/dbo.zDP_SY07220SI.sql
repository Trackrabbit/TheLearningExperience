SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07220SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @ViewName char(81), @CompanyVisibility smallint, @IsShared tinyint, @RoleSharing smallint, @UserSharing smallint, @CRUSRID char(15), @CREATDDT datetime, @MDFUSRID char(15), @MODIFDT datetime, @DefaultViewID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07220 (ListDictID, ListID, ViewID, ViewName, CompanyVisibility, IsShared, RoleSharing, UserSharing, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DefaultViewID) VALUES ( @ListDictID, @ListID, @ViewID, @ViewName, @CompanyVisibility, @IsShared, @RoleSharing, @UserSharing, @CRUSRID, @CREATDDT, @MDFUSRID, @MODIFDT, @DefaultViewID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07220SI] TO [DYNGRP]
GO
