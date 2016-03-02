SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42500SS_1] (@UserField smallint, @TableValue char(41)) AS  set nocount on SELECT TOP 1  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE UserField = @UserField AND TableValue = @TableValue ORDER BY UserField ASC, TableValue ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42500SS_1] TO [DYNGRP]
GO
