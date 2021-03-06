SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42502N_1] (@BS int, @Batch_Prefix char(15), @DEPRTMNT char(7), @Batch_Prefix_RS char(15), @DEPRTMNT_RS char(7), @Batch_Prefix_RE char(15), @DEPRTMNT_RE char(7)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 WHERE ( Batch_Prefix = @Batch_Prefix AND DEPRTMNT > @DEPRTMNT OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, DEPRTMNT ASC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 WHERE Batch_Prefix = @Batch_Prefix_RS AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND ( Batch_Prefix = @Batch_Prefix AND DEPRTMNT > @DEPRTMNT OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, DEPRTMNT ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, DEPRTMNT, DEX_ROW_ID FROM .UPR42502 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND ( Batch_Prefix = @Batch_Prefix AND DEPRTMNT > @DEPRTMNT OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, DEPRTMNT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42502N_1] TO [DYNGRP]
GO
