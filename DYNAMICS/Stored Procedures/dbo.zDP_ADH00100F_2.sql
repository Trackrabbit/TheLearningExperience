SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00100F_2] (@ASI_Favorite_Dict_ID_RS smallint, @ADHListName_RS char(61), @ASI_Favorite_Dict_ID_RE smallint, @ADHListName_RE char(61)) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Favorite_Dict_ID_RS IS NULL BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 ORDER BY ASI_Favorite_Dict_ID ASC, ADHListName ASC END ELSE IF @ASI_Favorite_Dict_ID_RS = @ASI_Favorite_Dict_ID_RE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID_RS AND ADHListName BETWEEN @ADHListName_RS AND @ADHListName_RE ORDER BY ASI_Favorite_Dict_ID ASC, ADHListName ASC END ELSE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 WHERE ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ADHListName BETWEEN @ADHListName_RS AND @ADHListName_RE ORDER BY ASI_Favorite_Dict_ID ASC, ADHListName ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00100F_2] TO [DYNGRP]
GO
