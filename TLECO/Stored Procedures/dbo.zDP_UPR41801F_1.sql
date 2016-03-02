SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41801F_1] (@STATEFED_RS char(3), @STATEFED_RE char(3)) AS  set nocount on IF @STATEFED_RS IS NULL BEGIN SELECT TOP 25  STATEFED, DSCRIPTN, DEX_ROW_ID FROM .UPR41801 ORDER BY STATEFED ASC END ELSE IF @STATEFED_RS = @STATEFED_RE BEGIN SELECT TOP 25  STATEFED, DSCRIPTN, DEX_ROW_ID FROM .UPR41801 WHERE STATEFED = @STATEFED_RS ORDER BY STATEFED ASC END ELSE BEGIN SELECT TOP 25  STATEFED, DSCRIPTN, DEX_ROW_ID FROM .UPR41801 WHERE STATEFED BETWEEN @STATEFED_RS AND @STATEFED_RE ORDER BY STATEFED ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41801F_1] TO [DYNGRP]
GO
