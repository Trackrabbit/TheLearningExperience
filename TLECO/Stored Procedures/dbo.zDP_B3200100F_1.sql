SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B3200100F_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BS25_Use_Legacy_CreditMA, BSSI_Auto_Consolidate, DEX_ROW_ID FROM .B3200100 ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BS25_Use_Legacy_CreditMA, BSSI_Auto_Consolidate, DEX_ROW_ID FROM .B3200100 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BS25_Use_Legacy_CreditMA, BSSI_Auto_Consolidate, DEX_ROW_ID FROM .B3200100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B3200100F_1] TO [DYNGRP]
GO
