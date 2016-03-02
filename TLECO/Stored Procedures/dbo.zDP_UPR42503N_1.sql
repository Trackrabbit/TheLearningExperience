SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42503N_1] (@BS int, @Batch_Prefix char(15), @JOBTITLE char(7), @Batch_Prefix_RS char(15), @JOBTITLE_RS char(7), @Batch_Prefix_RE char(15), @JOBTITLE_RE char(7)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE ( Batch_Prefix = @Batch_Prefix AND JOBTITLE > @JOBTITLE OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, JOBTITLE ASC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE Batch_Prefix = @Batch_Prefix_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( Batch_Prefix = @Batch_Prefix AND JOBTITLE > @JOBTITLE OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, JOBTITLE, DEX_ROW_ID FROM .UPR42503 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( Batch_Prefix = @Batch_Prefix AND JOBTITLE > @JOBTITLE OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42503N_1] TO [DYNGRP]
GO
