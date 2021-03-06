SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42502L_2] (@DEPRTMNT_RS char(7), @Batch_Prefix_RS char(15), @DEPRTMNT_RE char(7), @Batch_Prefix_RE char(15)) AS  set nocount on IF @DEPRTMNT_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 ORDER BY DEPRTMNT DESC, Batch_Prefix DESC END ELSE IF @DEPRTMNT_RS = @DEPRTMNT_RE BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 WHERE DEPRTMNT = @DEPRTMNT_RS AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY DEPRTMNT DESC, Batch_Prefix DESC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 WHERE DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY DEPRTMNT DESC, Batch_Prefix DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42502L_2] TO [DYNGRP]
GO
