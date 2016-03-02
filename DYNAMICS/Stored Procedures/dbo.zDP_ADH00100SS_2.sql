SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00100SS_2] (@ASI_Favorite_Dict_ID smallint, @ADHListName char(61)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ADHListName = @ADHListName ORDER BY ASI_Favorite_Dict_ID ASC, ADHListName ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00100SS_2] TO [DYNGRP]
GO
