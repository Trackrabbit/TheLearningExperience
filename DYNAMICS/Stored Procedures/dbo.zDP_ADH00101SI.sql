SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00101SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Sequence smallint, @ADHFieldDisplayName char(255), @ADHFieldPhysicalName char(255), @ADHFieldDictID smallint, @ADHFieldVisible tinyint, @ADHTableTechnicalName char(255), @ADHTablePhysicalName char(255), @ADHTableDisplayName char(255), @ADHFieldType smallint, @ASI_Field_Datatype smallint, @ADHSeries smallint, @ADHDecimalDigit smallint, @ADHRelativeDecimalPos tinyint, @ADHShowCurrencySymbol tinyint, @ADHShowPercentSign tinyint, @CRNCYSYM char(3), @DECPLCUR smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ADH00101 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Sequence, ADHFieldDisplayName, ADHFieldPhysicalName, ADHFieldDictID, ADHFieldVisible, ADHTableTechnicalName, ADHTablePhysicalName, ADHTableDisplayName, ADHFieldType, ASI_Field_Datatype, ADHSeries, ADHDecimalDigit, ADHRelativeDecimalPos, ADHShowCurrencySymbol, ADHShowPercentSign, CRNCYSYM, DECPLCUR) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Sequence, @ADHFieldDisplayName, @ADHFieldPhysicalName, @ADHFieldDictID, @ADHFieldVisible, @ADHTableTechnicalName, @ADHTablePhysicalName, @ADHTableDisplayName, @ADHFieldType, @ASI_Field_Datatype, @ADHSeries, @ADHDecimalDigit, @ADHRelativeDecimalPos, @ADHShowCurrencySymbol, @ADHShowPercentSign, @CRNCYSYM, @DECPLCUR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00101SI] TO [DYNGRP]
GO
