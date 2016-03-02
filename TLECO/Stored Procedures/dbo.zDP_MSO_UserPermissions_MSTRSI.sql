SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_UserPermissions_MSTRSI] (@MSO_UserID char(51), @MSO_UserPermissionViewCC tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MSO_UserPermissions_MSTR (MSO_UserID, MSO_UserPermissionViewCC) VALUES ( @MSO_UserID, @MSO_UserPermissionViewCC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_UserPermissions_MSTRSI] TO [DYNGRP]
GO
