SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42503N_2] (@BS int, @JOBTITLE char(7), @Batch_Prefix char(15), @JOBTITLE_RS char(7), @Batch_Prefix_RS char(15), @JOBTITLE_RE char(7), @Batch_Prefix_RE char(15)) AS  set nocount on IF @JOBTITLE_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE ( JOBTITLE = @JOBTITLE AND Batch_Prefix > @Batch_Prefix OR JOBTITLE > @JOBTITLE ) ORDER BY JOBTITLE ASC, Batch_Prefix ASC END ELSE IF @JOBTITLE_RS = @JOBTITLE_RE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE JOBTITLE = @JOBTITLE_RS AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND ( JOBTITLE = @JOBTITLE AND Batch_Prefix > @Batch_Prefix OR JOBTITLE > @JOBTITLE ) ORDER BY JOBTITLE ASC, Batch_Prefix ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND ( JOBTITLE = @JOBTITLE AND Batch_Prefix > @Batch_Prefix OR JOBTITLE > @JOBTITLE ) ORDER BY JOBTITLE ASC, Batch_Prefix ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42503N_2] TO [DYNGRP]
GO
