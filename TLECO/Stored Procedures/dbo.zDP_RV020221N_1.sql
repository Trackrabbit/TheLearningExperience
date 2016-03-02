SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV020221N_1] (@BS int, @REVIEWSETUPCODE_I char(31), @SEQORDER_I smallint, @REVIEWSETUPCODE_I_RS char(31), @SEQORDER_I_RS smallint, @REVIEWSETUPCODE_I_RE char(31), @SEQORDER_I_RE smallint) AS  set nocount on IF @REVIEWSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND SEQORDER_I > @SEQORDER_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, SEQORDER_I ASC END ELSE IF @REVIEWSETUPCODE_I_RS = @REVIEWSETUPCODE_I_RE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I_RS AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND SEQORDER_I > @SEQORDER_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, SEQORDER_I ASC END ELSE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE REVIEWSETUPCODE_I BETWEEN @REVIEWSETUPCODE_I_RS AND @REVIEWSETUPCODE_I_RE AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND SEQORDER_I > @SEQORDER_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, SEQORDER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV020221N_1] TO [DYNGRP]
GO
