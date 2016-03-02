SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12110L_1] (@Navigation_ID_RS char(15), @Fact_Box_Number_RS smallint, @Fact_Box_Parameter_Num_RS smallint, @Navigation_ID_RE char(15), @Fact_Box_Number_RE smallint, @Fact_Box_Parameter_Num_RE smallint) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .NLB12110 ORDER BY Navigation_ID DESC, Fact_Box_Number DESC, Fact_Box_Parameter_Num DESC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .NLB12110 WHERE Navigation_ID = @Navigation_ID_RS AND Fact_Box_Number BETWEEN @Fact_Box_Number_RS AND @Fact_Box_Number_RE AND Fact_Box_Parameter_Num BETWEEN @Fact_Box_Parameter_Num_RS AND @Fact_Box_Parameter_Num_RE ORDER BY Navigation_ID DESC, Fact_Box_Number DESC, Fact_Box_Parameter_Num DESC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Parameter_Num, Table_Number, Field_Number, DEX_ROW_ID FROM .NLB12110 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Fact_Box_Number BETWEEN @Fact_Box_Number_RS AND @Fact_Box_Number_RE AND Fact_Box_Parameter_Num BETWEEN @Fact_Box_Parameter_Num_RS AND @Fact_Box_Parameter_Num_RE ORDER BY Navigation_ID DESC, Fact_Box_Number DESC, Fact_Box_Parameter_Num DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12110L_1] TO [DYNGRP]
GO
