SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910000L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BS29ACTNUMBR1_1, BS29ACTNUMBR1_2, BS29ACTNUMBR1_3, BS29ACTNUMBR1_4, BS29ACTNUMBR2_1, BS29ACTNUMBR2_2, BS29ACTNUMBR2_3, BS29ACTNUMBR2_4, BS29ACTNUMBR3_1, BS29ACTNUMBR3_2, BS29ACTNUMBR3_3, BS29ACTNUMBR3_4, TAXSCHID, BS29_Is_Rule78, DEX_ROW_ID FROM .B2910000 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BS29ACTNUMBR1_1, BS29ACTNUMBR1_2, BS29ACTNUMBR1_3, BS29ACTNUMBR1_4, BS29ACTNUMBR2_1, BS29ACTNUMBR2_2, BS29ACTNUMBR2_3, BS29ACTNUMBR2_4, BS29ACTNUMBR3_1, BS29ACTNUMBR3_2, BS29ACTNUMBR3_3, BS29ACTNUMBR3_4, TAXSCHID, BS29_Is_Rule78, DEX_ROW_ID FROM .B2910000 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BS29ACTNUMBR1_1, BS29ACTNUMBR1_2, BS29ACTNUMBR1_3, BS29ACTNUMBR1_4, BS29ACTNUMBR2_1, BS29ACTNUMBR2_2, BS29ACTNUMBR2_3, BS29ACTNUMBR2_4, BS29ACTNUMBR3_1, BS29ACTNUMBR3_2, BS29ACTNUMBR3_3, BS29ACTNUMBR3_4, TAXSCHID, BS29_Is_Rule78, DEX_ROW_ID FROM .B2910000 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910000L_1] TO [DYNGRP]
GO
