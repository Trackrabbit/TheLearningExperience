SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12100F_1] (@Navigation_ID_RS char(15), @Fact_Box_Number_RS smallint, @Navigation_ID_RE char(15), @Fact_Box_Number_RE smallint) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Path, Fact_Box_Name, DEX_ROW_ID FROM .NLB12100 ORDER BY Navigation_ID ASC, Fact_Box_Number ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Path, Fact_Box_Name, DEX_ROW_ID FROM .NLB12100 WHERE Navigation_ID = @Navigation_ID_RS AND Fact_Box_Number BETWEEN @Fact_Box_Number_RS AND @Fact_Box_Number_RE ORDER BY Navigation_ID ASC, Fact_Box_Number ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Fact_Box_Number, Fact_Box_Path, Fact_Box_Name, DEX_ROW_ID FROM .NLB12100 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Fact_Box_Number BETWEEN @Fact_Box_Number_RS AND @Fact_Box_Number_RE ORDER BY Navigation_ID ASC, Fact_Box_Number ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12100F_1] TO [DYNGRP]
GO
