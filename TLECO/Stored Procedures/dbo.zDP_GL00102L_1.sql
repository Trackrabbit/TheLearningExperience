SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00102L_1] (@ACCATNUM_RS smallint, @ACCATNUM_RE smallint) AS  set nocount on IF @ACCATNUM_RS IS NULL BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 ORDER BY ACCATNUM DESC END ELSE IF @ACCATNUM_RS = @ACCATNUM_RE BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 WHERE ACCATNUM = @ACCATNUM_RS ORDER BY ACCATNUM DESC END ELSE BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 WHERE ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE ORDER BY ACCATNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00102L_1] TO [DYNGRP]
GO