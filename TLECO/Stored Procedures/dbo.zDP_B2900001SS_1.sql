SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900001SS_1] (@SETUPKEY smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SETUPKEY, TIME1, BSSI_Hours, BSSI_Rev_Source_ID, DEX_ROW_ID FROM .B2900001 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900001SS_1] TO [DYNGRP]
GO