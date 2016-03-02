SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42505F_1] (@Batch_Prefix_RS char(15), @EMPLOYID_RS char(15), @Batch_Prefix_RE char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, EMPLOYID, DEX_ROW_ID FROM .UPR42505 ORDER BY Batch_Prefix ASC, EMPLOYID ASC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, EMPLOYID, DEX_ROW_ID FROM .UPR42505 WHERE Batch_Prefix = @Batch_Prefix_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY Batch_Prefix ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, EMPLOYID, DEX_ROW_ID FROM .UPR42505 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY Batch_Prefix ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42505F_1] TO [DYNGRP]
GO
