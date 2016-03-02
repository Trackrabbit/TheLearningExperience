SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV020221N_2] (@BS int, @REVIEWSETUPCODE_I char(31), @REVIEWCATEGORY_I char(31), @REVIEWSETUPCODE_I_RS char(31), @REVIEWCATEGORY_I_RS char(31), @REVIEWSETUPCODE_I_RE char(31), @REVIEWCATEGORY_I_RE char(31)) AS  set nocount on IF @REVIEWSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVIEWCATEGORY_I > @REVIEWCATEGORY_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVIEWCATEGORY_I ASC END ELSE IF @REVIEWSETUPCODE_I_RS = @REVIEWSETUPCODE_I_RE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I_RS AND REVIEWCATEGORY_I BETWEEN @REVIEWCATEGORY_I_RS AND @REVIEWCATEGORY_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVIEWCATEGORY_I > @REVIEWCATEGORY_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVIEWCATEGORY_I ASC END ELSE BEGIN SELECT TOP 25  REVIEWSETUPCODE_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, SEQORDER_I, REVIEWWORDSETINDEX_I, DEX_ROW_ID FROM .RV020221 WHERE REVIEWSETUPCODE_I BETWEEN @REVIEWSETUPCODE_I_RS AND @REVIEWSETUPCODE_I_RE AND REVIEWCATEGORY_I BETWEEN @REVIEWCATEGORY_I_RS AND @REVIEWCATEGORY_I_RE AND ( REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVIEWCATEGORY_I > @REVIEWCATEGORY_I OR REVIEWSETUPCODE_I > @REVIEWSETUPCODE_I ) ORDER BY REVIEWSETUPCODE_I ASC, REVIEWCATEGORY_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV020221N_2] TO [DYNGRP]
GO
