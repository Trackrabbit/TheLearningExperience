SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42500L_1] (@Batch_Prefix_RS char(15), @Batch_Prefix_RE char(15)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 ORDER BY Batch_Prefix DESC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 WHERE Batch_Prefix = @Batch_Prefix_RS ORDER BY Batch_Prefix DESC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY Batch_Prefix DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42500L_1] TO [DYNGRP]
GO
