SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00103SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Sequence smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Sequence, ADHTableDisplayName, ADHFieldDisplayName, ADHFieldDictID, ADHFilterType, ADHFilterValue, DEX_ROW_ID FROM .ADH00103 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Sequence = @ASI_Sequence ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00103SS_1] TO [DYNGRP]
GO
