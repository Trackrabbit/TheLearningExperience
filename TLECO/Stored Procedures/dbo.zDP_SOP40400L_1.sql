SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40400L_1] (@INDEX1_RS smallint, @USTABVAL_RS char(21), @INDEX1_RE smallint, @USTABVAL_RE char(21)) AS  set nocount on IF @INDEX1_RS IS NULL BEGIN SELECT TOP 25  INDEX1, USTABVAL, DEX_ROW_ID FROM .SOP40400 ORDER BY INDEX1 DESC, USTABVAL DESC END ELSE IF @INDEX1_RS = @INDEX1_RE BEGIN SELECT TOP 25  INDEX1, USTABVAL, DEX_ROW_ID FROM .SOP40400 WHERE INDEX1 = @INDEX1_RS AND USTABVAL BETWEEN @USTABVAL_RS AND @USTABVAL_RE ORDER BY INDEX1 DESC, USTABVAL DESC END ELSE BEGIN SELECT TOP 25  INDEX1, USTABVAL, DEX_ROW_ID FROM .SOP40400 WHERE INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND USTABVAL BETWEEN @USTABVAL_RS AND @USTABVAL_RE ORDER BY INDEX1 DESC, USTABVAL DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40400L_1] TO [DYNGRP]
GO
