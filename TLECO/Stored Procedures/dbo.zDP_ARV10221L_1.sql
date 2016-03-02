SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ARV10221L_1] (@EMPID_I_RS char(15), @DATEOFLASTREVIEW_I_RS datetime, @SEQORDER_I_RS smallint, @EMPID_I_RE char(15), @DATEOFLASTREVIEW_I_RE datetime, @SEQORDER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, SEQORDER_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, NOTESINDEX_I, REVIEWRATINGWORD_I, REVIEWWORDSETINDEX_I, REVIEWSCOREDOLLAR_I, DEX_ROW_ID FROM .ARV10221 ORDER BY EMPID_I DESC, DATEOFLASTREVIEW_I DESC, SEQORDER_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, SEQORDER_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, NOTESINDEX_I, REVIEWRATINGWORD_I, REVIEWWORDSETINDEX_I, REVIEWSCOREDOLLAR_I, DEX_ROW_ID FROM .ARV10221 WHERE EMPID_I = @EMPID_I_RS AND DATEOFLASTREVIEW_I BETWEEN @DATEOFLASTREVIEW_I_RS AND @DATEOFLASTREVIEW_I_RE AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE ORDER BY EMPID_I DESC, DATEOFLASTREVIEW_I DESC, SEQORDER_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, SEQORDER_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, NOTESINDEX_I, REVIEWRATINGWORD_I, REVIEWWORDSETINDEX_I, REVIEWSCOREDOLLAR_I, DEX_ROW_ID FROM .ARV10221 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND DATEOFLASTREVIEW_I BETWEEN @DATEOFLASTREVIEW_I_RS AND @DATEOFLASTREVIEW_I_RE AND SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE ORDER BY EMPID_I DESC, DATEOFLASTREVIEW_I DESC, SEQORDER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ARV10221L_1] TO [DYNGRP]
GO
