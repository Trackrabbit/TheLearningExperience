SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10990SS_1] (@Language_ID smallint, @Deployed_Object_Name char(101)) AS  set nocount on SELECT TOP 1  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID = @Language_ID AND Deployed_Object_Name = @Deployed_Object_Name ORDER BY Language_ID ASC, Deployed_Object_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10990SS_1] TO [DYNGRP]
GO
