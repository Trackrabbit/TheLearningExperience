SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2GR02SS_2] (@EMPID_I char(15), @ENTRYNUMBER_I smallint, @SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, ENTRYNUMBER_I, STAGENUMBER_I, SEQORDER_I, STAGENAME_I, DATE1, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2GR02 WHERE EMPID_I = @EMPID_I AND ENTRYNUMBER_I = @ENTRYNUMBER_I AND SEQORDER_I = @SEQORDER_I ORDER BY EMPID_I ASC, ENTRYNUMBER_I ASC, SEQORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2GR02SS_2] TO [DYNGRP]
GO
