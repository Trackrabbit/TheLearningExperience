SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE024230L_2] (@TERMINATED_I_RS tinyint, @TERMINATIONDATE_I_RS datetime, @TERMINATED_I_RE tinyint, @TERMINATIONDATE_I_RE datetime) AS  set nocount on IF @TERMINATED_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, TERMINATIONDATE_I, TERMINATED_I, TERMSETUPCODE_I, TERMSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, DATEOFLASTCHANGE_I, USERID, EXITINTERVIEWDATE_I, REHIRE_I, NOTESINDEX_I, NOTESINDEX2_I, DEX_ROW_ID FROM .TE024230 ORDER BY TERMINATED_I DESC, TERMINATIONDATE_I DESC, DEX_ROW_ID DESC END ELSE IF @TERMINATED_I_RS = @TERMINATED_I_RE BEGIN SELECT TOP 25  EMPID_I, TERMINATIONDATE_I, TERMINATED_I, TERMSETUPCODE_I, TERMSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, DATEOFLASTCHANGE_I, USERID, EXITINTERVIEWDATE_I, REHIRE_I, NOTESINDEX_I, NOTESINDEX2_I, DEX_ROW_ID FROM .TE024230 WHERE TERMINATED_I = @TERMINATED_I_RS AND TERMINATIONDATE_I BETWEEN @TERMINATIONDATE_I_RS AND @TERMINATIONDATE_I_RE ORDER BY TERMINATED_I DESC, TERMINATIONDATE_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, TERMINATIONDATE_I, TERMINATED_I, TERMSETUPCODE_I, TERMSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, DATEOFLASTCHANGE_I, USERID, EXITINTERVIEWDATE_I, REHIRE_I, NOTESINDEX_I, NOTESINDEX2_I, DEX_ROW_ID FROM .TE024230 WHERE TERMINATED_I BETWEEN @TERMINATED_I_RS AND @TERMINATED_I_RE AND TERMINATIONDATE_I BETWEEN @TERMINATIONDATE_I_RS AND @TERMINATIONDATE_I_RE ORDER BY TERMINATED_I DESC, TERMINATIONDATE_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE024230L_2] TO [DYNGRP]
GO