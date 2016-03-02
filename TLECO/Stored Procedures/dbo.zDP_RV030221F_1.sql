SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV030221F_1] (@REVIEWWORDSETINDEX_I_RS int, @SEQORDER_I_RS smallint, @REVIEWWORDSETINDEX_I_RE int, @SEQORDER_I_RE smallint) AS  set nocount on IF @REVIEWWORDSETINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, SEQORDER_I, REVIEWRATINGWORD_I, DEX_ROW_ID FROM .RV030221 ORDER BY REVIEWWORDSETINDEX_I ASC, SEQORDER_I ASC END ELSE IF @REVIEWWORDSETINDEX_I_RS = @REVIEWWORDSETINDEX_I_RE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, SEQORDER_I, REVIEWRATINGWORD_I, DEX_ROW_ID FROM .RV030221 WHERE REVIEWWORDSETINDEX_I = @REVIEWWORDSETINDEX_I_RS AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE ORDER BY REVIEWWORDSETINDEX_I ASC, SEQORDER_I ASC END ELSE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, SEQORDER_I, REVIEWRATINGWORD_I, DEX_ROW_ID FROM .RV030221 WHERE REVIEWWORDSETINDEX_I BETWEEN @REVIEWWORDSETINDEX_I_RS AND @REVIEWWORDSETINDEX_I_RE AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE ORDER BY REVIEWWORDSETINDEX_I ASC, SEQORDER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV030221F_1] TO [DYNGRP]
GO
