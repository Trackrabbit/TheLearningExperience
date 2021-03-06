SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE024230SS_2] (@TERMINATED_I tinyint, @TERMINATIONDATE_I datetime) AS  set nocount on SELECT TOP 1  EMPID_I, TERMINATIONDATE_I, TERMINATED_I, TERMSETUPCODE_I, TERMSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, DATEOFLASTCHANGE_I, USERID, EXITINTERVIEWDATE_I, REHIRE_I, NOTESINDEX_I, NOTESINDEX2_I, DEX_ROW_ID FROM .TE024230 WHERE TERMINATED_I = @TERMINATED_I AND TERMINATIONDATE_I = @TERMINATIONDATE_I ORDER BY TERMINATED_I ASC, TERMINATIONDATE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE024230SS_2] TO [DYNGRP]
GO
