SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ARV10221SI] (@EMPID_I char(15), @DATEOFLASTREVIEW_I datetime, @SEQORDER_I smallint, @REVIEWCATEGORY_I char(31), @REVIEWWEIGHTFACTOR_I smallint, @NOTESINDEX_I numeric(19,5), @REVIEWRATINGWORD_I char(31), @REVIEWWORDSETINDEX_I int, @REVIEWSCOREDOLLAR_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ARV10221 (EMPID_I, DATEOFLASTREVIEW_I, SEQORDER_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, NOTESINDEX_I, REVIEWRATINGWORD_I, REVIEWWORDSETINDEX_I, REVIEWSCOREDOLLAR_I) VALUES ( @EMPID_I, @DATEOFLASTREVIEW_I, @SEQORDER_I, @REVIEWCATEGORY_I, @REVIEWWEIGHTFACTOR_I, @NOTESINDEX_I, @REVIEWRATINGWORD_I, @REVIEWWORDSETINDEX_I, @REVIEWSCOREDOLLAR_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ARV10221SI] TO [DYNGRP]
GO
