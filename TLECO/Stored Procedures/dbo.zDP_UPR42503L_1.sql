SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42503L_1] (@Batch_Prefix_RS char(15), @JOBTITLE_RS char(7), @Batch_Prefix_RE char(15), @JOBTITLE_RE char(7)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 ORDER BY Batch_Prefix DESC, JOBTITLE DESC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE Batch_Prefix = @Batch_Prefix_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY Batch_Prefix DESC, JOBTITLE DESC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY Batch_Prefix DESC, JOBTITLE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42503L_1] TO [DYNGRP]
GO
