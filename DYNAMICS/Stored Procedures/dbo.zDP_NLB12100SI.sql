SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12100SI] (@Navigation_ID char(15), @Fact_Box_Number smallint, @Fact_Box_Path char(255), @Fact_Box_Name char(255), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB12100 (Navigation_ID, Fact_Box_Number, Fact_Box_Path, Fact_Box_Name) VALUES ( @Navigation_ID, @Fact_Box_Number, @Fact_Box_Path, @Fact_Box_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12100SI] TO [DYNGRP]
GO
