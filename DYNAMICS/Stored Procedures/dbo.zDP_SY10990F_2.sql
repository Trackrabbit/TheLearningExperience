SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10990F_2] (@Language_ID_RS smallint, @DICTID_RS smallint, @Deployed_Type_RS smallint, @Deployed_Series_RS smallint, @Language_ID_RE smallint, @DICTID_RE smallint, @Deployed_Type_RE smallint, @Deployed_Series_RE smallint) AS  set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 ORDER BY Language_ID ASC, DICTID ASC, Deployed_Type ASC, Deployed_Series ASC, DEX_ROW_ID ASC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID = @Language_ID_RS AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND Deployed_Type BETWEEN @Deployed_Type_RS AND @Deployed_Type_RE AND Deployed_Series BETWEEN @Deployed_Series_RS AND @Deployed_Series_RE ORDER BY Language_ID ASC, DICTID ASC, Deployed_Type ASC, Deployed_Series ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Language_ID, Deployed_Object_Name, DICTID, Deployed_Type, Deployed_Module, Deployed_Series, Deployed_Server_Name, Deployed_WorkStation_ID, Deployed_Catalog, DEX_ROW_ID, Deployed_Object FROM .SY10990 WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND Deployed_Type BETWEEN @Deployed_Type_RS AND @Deployed_Type_RE AND Deployed_Series BETWEEN @Deployed_Series_RS AND @Deployed_Series_RE ORDER BY Language_ID ASC, DICTID ASC, Deployed_Type ASC, Deployed_Series ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10990F_2] TO [DYNGRP]
GO
