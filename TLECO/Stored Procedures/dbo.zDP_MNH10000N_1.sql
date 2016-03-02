SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MNH10000N_1] (@BS int, @MFGNOTEINDEX_I numeric(19,5), @MFGNOTEINDEX_I_RS numeric(19,5), @MFGNOTEINDEX_I_RE numeric(19,5)) AS  set nocount on IF @MFGNOTEINDEX_I_RS IS NULL BEGIN SELECT TOP 25  MFGNOTEINDEX_I, DEX_ROW_ID FROM .MNH10000 WHERE ( MFGNOTEINDEX_I > @MFGNOTEINDEX_I ) ORDER BY MFGNOTEINDEX_I ASC END ELSE IF @MFGNOTEINDEX_I_RS = @MFGNOTEINDEX_I_RE BEGIN SELECT TOP 25  MFGNOTEINDEX_I, DEX_ROW_ID FROM .MNH10000 WHERE MFGNOTEINDEX_I = @MFGNOTEINDEX_I_RS AND ( MFGNOTEINDEX_I > @MFGNOTEINDEX_I ) ORDER BY MFGNOTEINDEX_I ASC END ELSE BEGIN SELECT TOP 25  MFGNOTEINDEX_I, DEX_ROW_ID FROM .MNH10000 WHERE MFGNOTEINDEX_I BETWEEN @MFGNOTEINDEX_I_RS AND @MFGNOTEINDEX_I_RE AND ( MFGNOTEINDEX_I > @MFGNOTEINDEX_I ) ORDER BY MFGNOTEINDEX_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MNH10000N_1] TO [DYNGRP]
GO
