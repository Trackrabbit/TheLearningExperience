SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40101F_1] (@FUTASUTA_RS char(3), @FUTASUTA_RE char(3)) AS  set nocount on IF @FUTASUTA_RS IS NULL BEGIN SELECT TOP 25  FUTASUTA, FUSUTSAD, DEX_ROW_ID FROM .UPR40101 ORDER BY FUTASUTA ASC, DEX_ROW_ID ASC END ELSE IF @FUTASUTA_RS = @FUTASUTA_RE BEGIN SELECT TOP 25  FUTASUTA, FUSUTSAD, DEX_ROW_ID FROM .UPR40101 WHERE FUTASUTA = @FUTASUTA_RS ORDER BY FUTASUTA ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FUTASUTA, FUSUTSAD, DEX_ROW_ID FROM .UPR40101 WHERE FUTASUTA BETWEEN @FUTASUTA_RS AND @FUTASUTA_RE ORDER BY FUTASUTA ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40101F_1] TO [DYNGRP]
GO
