SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B3200100SI] (@SETUPKEY smallint, @BS25_Use_Legacy_CreditMA tinyint, @BSSI_Auto_Consolidate tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B3200100 (SETUPKEY, BS25_Use_Legacy_CreditMA, BSSI_Auto_Consolidate) VALUES ( @SETUPKEY, @BS25_Use_Legacy_CreditMA, @BSSI_Auto_Consolidate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B3200100SI] TO [DYNGRP]
GO
