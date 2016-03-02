SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12100SS_1] (@Navigation_ID char(15), @Fact_Box_Number smallint) AS set nocount on SELECT TOP 1  Navigation_ID, Fact_Box_Number, Fact_Box_Path, Fact_Box_Name, DEX_ROW_ID FROM .NLB12100 WHERE Navigation_ID = @Navigation_ID AND Fact_Box_Number = @Fact_Box_Number ORDER BY Navigation_ID ASC, Fact_Box_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12100SS_1] TO [DYNGRP]
GO
