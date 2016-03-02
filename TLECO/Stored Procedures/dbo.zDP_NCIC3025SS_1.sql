SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3025SS_1] (@CMRECNUM numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMRECNUM, options_1, options_2, options_3, options_4, options_5, options_6, options_7, options_8, options_9, options_10, options_11, options_12, options_13, options_14, options_15, options_16, options_17, options_18, options_19, options_20, DEX_ROW_ID FROM .NCIC3025 WHERE CMRECNUM = @CMRECNUM ORDER BY CMRECNUM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3025SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3025SS_1] TO [public]
GO
