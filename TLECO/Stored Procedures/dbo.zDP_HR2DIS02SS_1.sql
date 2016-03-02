SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIS02SS_1] (@EMPID_I char(15), @ENTRYNUMBER_I smallint, @SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, ENTRYNUMBER_I, SEQORDER_I, STAGENAME_I, DATE1, PERSONFILING_I, STAGETYPE_I, DATEIN_I, DATEOUT_I, GB_I, TERMINATIONCB_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2DIS02 WHERE EMPID_I = @EMPID_I AND ENTRYNUMBER_I = @ENTRYNUMBER_I AND SEQORDER_I = @SEQORDER_I ORDER BY EMPID_I ASC, ENTRYNUMBER_I ASC, SEQORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIS02SS_1] TO [DYNGRP]
GO