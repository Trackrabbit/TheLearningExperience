SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12110SS_1] (@Navigation_ID char(15), @Fact_Box_Number smallint, @Fact_Box_Parameter_Num smallint) AS set nocount on SELECT TOP 1  Navigation_ID, Fact_Box_Number, Fact_Box_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .NLB12110 WHERE Navigation_ID = @Navigation_ID AND Fact_Box_Number = @Fact_Box_Number AND Fact_Box_Parameter_Num = @Fact_Box_Parameter_Num ORDER BY Navigation_ID ASC, Fact_Box_Number ASC, Fact_Box_Parameter_Num ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12110SS_1] TO [DYNGRP]
GO
