SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV010221SS_1] (@EMPID_I char(15), @DATEOFLASTREVIEW_I datetime, @SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, DATEOFLASTREVIEW_I, SEQORDER_I, REVIEWCATEGORY_I, REVIEWWEIGHTFACTOR_I, NOTESINDEX_I, REVIEWRATINGWORD_I, REVIEWWORDSETINDEX_I, REVIEWSCOREDOLLAR_I, DEX_ROW_ID FROM .RV010221 WHERE EMPID_I = @EMPID_I AND DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND SEQORDER_I = @SEQORDER_I ORDER BY EMPID_I ASC, DATEOFLASTREVIEW_I ASC, SEQORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV010221SS_1] TO [DYNGRP]
GO
