SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00103SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Sequence smallint, @ADHTableDisplayName char(255), @ADHFieldDisplayName char(255), @ADHFieldDictID smallint, @ADHFilterType smallint, @ADHFilterValue char(101), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ADH00103 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Sequence, ADHTableDisplayName, ADHFieldDisplayName, ADHFieldDictID, ADHFilterType, ADHFilterValue) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Sequence, @ADHTableDisplayName, @ADHFieldDisplayName, @ADHFieldDictID, @ADHFilterType, @ADHFilterValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00103SI] TO [DYNGRP]
GO
