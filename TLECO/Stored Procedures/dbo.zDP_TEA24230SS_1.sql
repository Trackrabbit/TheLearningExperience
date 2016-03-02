SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TEA24230SS_1] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, TERMINATIONDATE_I, TERMINATED_I, TERMSETUPCODE_I, TERMSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, DATEOFLASTCHANGE_I, USERID, EXITINTERVIEWDATE_I, REHIRE_I, NOTESINDEX_I, NOTESINDEX2_I, DEX_ROW_ID FROM .TEA24230 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TEA24230SS_1] TO [DYNGRP]
GO
