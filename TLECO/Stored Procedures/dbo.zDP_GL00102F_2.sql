SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00102F_2] (@ACCATDSC_RS char(51), @ACCATNUM_RS smallint, @ACCATDSC_RE char(51), @ACCATNUM_RE smallint) AS  set nocount on IF @ACCATDSC_RS IS NULL BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 ORDER BY ACCATDSC ASC, ACCATNUM ASC END ELSE IF @ACCATDSC_RS = @ACCATDSC_RE BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 WHERE ACCATDSC = @ACCATDSC_RS AND ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE ORDER BY ACCATDSC ASC, ACCATNUM ASC END ELSE BEGIN SELECT TOP 25  ACCATNUM, ACCATDSC, DEX_ROW_TS, DEX_ROW_ID FROM .GL00102 WHERE ACCATDSC BETWEEN @ACCATDSC_RS AND @ACCATDSC_RE AND ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE ORDER BY ACCATDSC ASC, ACCATNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00102F_2] TO [DYNGRP]
GO
