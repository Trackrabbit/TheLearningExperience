SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42500F_2] (@DSCRIPTN_RS char(31), @Batch_Prefix_RS char(15), @DSCRIPTN_RE char(31), @Batch_Prefix_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 ORDER BY DSCRIPTN ASC, Batch_Prefix ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 WHERE DSCRIPTN = @DSCRIPTN_RS AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY DSCRIPTN ASC, Batch_Prefix ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY DSCRIPTN ASC, Batch_Prefix ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42500F_2] TO [DYNGRP]
GO
