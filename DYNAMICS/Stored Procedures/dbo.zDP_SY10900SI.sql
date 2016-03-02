SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10900SI] (@Language_ID smallint, @Deployment_Type smallint, @Deployed_Object_Name char(101), @Deployed_Type smallint, @System_Level_Data_Con char(255), @System_Level_Reports char(255), @Deployed_Reas_for_Fail smallint, @Deployed_Series smallint, @Deployed_Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY10900 (Language_ID, Deployment_Type, Deployed_Object_Name, Deployed_Type, System_Level_Data_Con, System_Level_Reports, Deployed_Reas_for_Fail, Deployed_Series, Deployed_Status) VALUES ( @Language_ID, @Deployment_Type, @Deployed_Object_Name, @Deployed_Type, @System_Level_Data_Con, @System_Level_Reports, @Deployed_Reas_for_Fail, @Deployed_Series, @Deployed_Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10900SI] TO [DYNGRP]
GO
