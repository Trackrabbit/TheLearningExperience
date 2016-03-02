SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ADH00102SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Sequence smallint, @ADHTableFrom char(255), @ADHTableTo char(255), @ADHFieldFrom char(255), @ADHFieldDictIDFrom smallint, @ADHFieldTo char(255), @ADHFieldDictIDTo smallint, @ADHJoinType smallint, @ADHDisplayRelation tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ADH00102 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Sequence, ADHTableFrom, ADHTableTo, ADHFieldFrom, ADHFieldDictIDFrom, ADHFieldTo, ADHFieldDictIDTo, ADHJoinType, ADHDisplayRelation) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Sequence, @ADHTableFrom, @ADHTableTo, @ADHFieldFrom, @ADHFieldDictIDFrom, @ADHFieldTo, @ADHFieldDictIDTo, @ADHJoinType, @ADHDisplayRelation) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ADH00102SI] TO [DYNGRP]
GO
