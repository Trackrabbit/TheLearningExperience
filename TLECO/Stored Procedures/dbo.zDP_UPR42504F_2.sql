SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42504F_2] (@EMPLCLAS_RS char(15), @Batch_Prefix_RS char(15), @EMPLCLAS_RE char(15), @Batch_Prefix_RE char(15)) AS  set nocount on IF @EMPLCLAS_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 ORDER BY EMPLCLAS ASC, Batch_Prefix ASC END ELSE IF @EMPLCLAS_RS = @EMPLCLAS_RE BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 WHERE EMPLCLAS = @EMPLCLAS_RS AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY EMPLCLAS ASC, Batch_Prefix ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 WHERE EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY EMPLCLAS ASC, Batch_Prefix ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42504F_2] TO [DYNGRP]
GO
