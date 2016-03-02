SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10990SS_2] (@Language_ID smallint, @DICTID smallint, @Deployed_Type smallint, @Deployed_Series smallint) AS  set nocount on SELECT TOP 1  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID = @Language_ID AND DICTID = @DICTID AND Deployed_Type = @Deployed_Type AND Deployed_Series = @Deployed_Series ORDER BY Language_ID ASC, DICTID ASC, Deployed_Type ASC, Deployed_Series ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10990SS_2] TO [DYNGRP]
GO
