SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3025SI] (@CMRECNUM numeric(19,5), @options_1 tinyint, @options_2 tinyint, @options_3 tinyint, @options_4 tinyint, @options_5 tinyint, @options_6 tinyint, @options_7 tinyint, @options_8 tinyint, @options_9 tinyint, @options_10 tinyint, @options_11 tinyint, @options_12 tinyint, @options_13 tinyint, @options_14 tinyint, @options_15 tinyint, @options_16 tinyint, @options_17 tinyint, @options_18 tinyint, @options_19 tinyint, @options_20 tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC3025 (CMRECNUM, options_1, options_2, options_3, options_4, options_5, options_6, options_7, options_8, options_9, options_10, options_11, options_12, options_13, options_14, options_15, options_16, options_17, options_18, options_19, options_20) VALUES ( @CMRECNUM, @options_1, @options_2, @options_3, @options_4, @options_5, @options_6, @options_7, @options_8, @options_9, @options_10, @options_11, @options_12, @options_13, @options_14, @options_15, @options_16, @options_17, @options_18, @options_19, @options_20) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3025SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3025SI] TO [public]
GO
