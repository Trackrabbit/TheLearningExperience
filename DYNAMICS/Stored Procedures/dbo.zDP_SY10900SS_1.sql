SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10900SS_1] (@Language_ID smallint, @Deployment_Type smallint, @Deployed_Object_Name char(101)) AS  set nocount on SELECT TOP 1  Language_ID, Deployment_Type, Deployed_Object_Name, Deployed_Type, System_Level_Data_Con, System_Level_Reports, Deployed_Reas_for_Fail, Deployed_Series, Deployed_Status, DEX_ROW_ID FROM .SY10900 WHERE Language_ID = @Language_ID AND Deployment_Type = @Deployment_Type AND Deployed_Object_Name = @Deployed_Object_Name ORDER BY Language_ID ASC, Deployment_Type ASC, Deployed_Object_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10900SS_1] TO [DYNGRP]
GO
