SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00101SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Sequence smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Sequence, ADHFieldDisplayName, ADHFieldPhysicalName, ADHFieldDictID, ADHFieldVisible, ADHTableTechnicalName, ADHTablePhysicalName, ADHTableDisplayName, ADHFieldType, ASI_Field_Datatype, ADHSeries, ADHDecimalDigit, ADHRelativeDecimalPos, ADHShowCurrencySymbol, ADHShowPercentSign, CRNCYSYM, DECPLCUR, DEX_ROW_ID FROM .ADH00101 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Sequence = @ASI_Sequence ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00101SS_1] TO [DYNGRP]
GO
