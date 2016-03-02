SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42504N_1] (@BS int, @Batch_Prefix char(15), @EMPLCLAS char(15), @Batch_Prefix_RS char(15), @EMPLCLAS_RS char(15), @Batch_Prefix_RE char(15), @EMPLCLAS_RE char(15)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 WHERE ( Batch_Prefix = @Batch_Prefix AND EMPLCLAS > @EMPLCLAS OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, EMPLCLAS ASC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 WHERE Batch_Prefix = @Batch_Prefix_RS AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Batch_Prefix = @Batch_Prefix AND EMPLCLAS > @EMPLCLAS OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, EMPLCLAS ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, EMPLCLAS, DEX_ROW_ID FROM .UPR42504 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Batch_Prefix = @Batch_Prefix AND EMPLCLAS > @EMPLCLAS OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, EMPLCLAS ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42504N_1] TO [DYNGRP]
GO
