SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00100L_1] (@ASI_Favorite_Dict_ID_RS smallint, @ASI_Favorite_Type_RS smallint, @ASI_Favorite_Dict_ID_RE smallint, @ASI_Favorite_Type_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Favorite_Dict_ID_RS IS NULL BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 ORDER BY ASI_Favorite_Dict_ID DESC, ASI_Favorite_Type DESC END ELSE IF @ASI_Favorite_Dict_ID_RS = @ASI_Favorite_Dict_ID_RE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID_RS AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE ORDER BY ASI_Favorite_Dict_ID DESC, ASI_Favorite_Type DESC END ELSE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHParentFavoriteType, ADHListName, USERID, CMPANYID, ADHExcelReportDeployed, ViewName, Workflow_Status, DEX_ROW_ID, ViewScript FROM .ADH00100 WHERE ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE ORDER BY ASI_Favorite_Dict_ID DESC, ASI_Favorite_Type DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00100L_1] TO [DYNGRP]
GO
