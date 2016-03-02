SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2NO01L_3] (@APPLICANTNUMBER_I_RS numeric(19,5), @NOTESINDEX_I_RS numeric(19,5), @APPLICANTNUMBER_I_RE numeric(19,5), @NOTESINDEX_I_RE numeric(19,5)) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .AHR2NO01 ORDER BY APPLICANTNUMBER_I DESC, NOTESINDEX_I DESC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .AHR2NO01 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND NOTESINDEX_I BETWEEN @NOTESINDEX_I_RS AND @NOTESINDEX_I_RE ORDER BY APPLICANTNUMBER_I DESC, NOTESINDEX_I DESC END ELSE BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .AHR2NO01 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND NOTESINDEX_I BETWEEN @NOTESINDEX_I_RS AND @NOTESINDEX_I_RE ORDER BY APPLICANTNUMBER_I DESC, NOTESINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2NO01L_3] TO [DYNGRP]
GO
