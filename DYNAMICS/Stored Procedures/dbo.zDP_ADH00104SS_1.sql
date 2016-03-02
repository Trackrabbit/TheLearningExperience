SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00104SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ADHCalculateFieldID char(61)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHCalculateFieldID, ADHCalcFieldDatatype, DEX_ROW_ID, ADHCalcFieldDisplayValue, ADHCalcFieldPhysicalVal FROM .ADH00104 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ADHCalculateFieldID = @ADHCalculateFieldID ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ADHCalculateFieldID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00104SS_1] TO [DYNGRP]
GO
