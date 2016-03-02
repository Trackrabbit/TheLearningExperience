SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10990F_1] (@Language_ID_RS smallint, @Deployed_Object_Name_RS char(101), @Language_ID_RE smallint, @Deployed_Object_Name_RE char(101)) AS  set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 ORDER BY Language_ID ASC, Deployed_Object_Name ASC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID = @Language_ID_RS AND Deployed_Object_Name BETWEEN @Deployed_Object_Name_RS AND @Deployed_Object_Name_RE ORDER BY Language_ID ASC, Deployed_Object_Name ASC END ELSE BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND Deployed_Object_Name BETWEEN @Deployed_Object_Name_RS AND @Deployed_Object_Name_RE ORDER BY Language_ID ASC, Deployed_Object_Name ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10990F_1] TO [DYNGRP]
GO
