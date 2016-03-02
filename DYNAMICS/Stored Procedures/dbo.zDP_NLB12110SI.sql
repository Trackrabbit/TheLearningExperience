SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12110SI] (@Navigation_ID char(15), @Fact_Box_Number smallint, @Fact_Box_Parameter_Num smallint, @Table_Number smallint, @Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB12110 (Navigation_ID, Fact_Box_Number, Fact_Box_Parameter_Num, Table_Number, Field_Number) VALUES ( @Navigation_ID, @Fact_Box_Number, @Fact_Box_Parameter_Num, @Table_Number, @Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12110SI] TO [DYNGRP]
GO
