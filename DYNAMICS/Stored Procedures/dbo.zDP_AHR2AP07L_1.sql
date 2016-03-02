SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP07L_1] (@APPLICANTNUMBER_I_RS numeric(19,5), @REQUISITIONNUMBER_I_RS int, @APPLICANTNUMBER_I_RE numeric(19,5), @REQUISITIONNUMBER_I_RE int) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 ORDER BY APPLICANTNUMBER_I DESC, REQUISITIONNUMBER_I DESC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND REQUISITIONNUMBER_I BETWEEN @REQUISITIONNUMBER_I_RS AND @REQUISITIONNUMBER_I_RE ORDER BY APPLICANTNUMBER_I DESC, REQUISITIONNUMBER_I DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND REQUISITIONNUMBER_I BETWEEN @REQUISITIONNUMBER_I_RS AND @REQUISITIONNUMBER_I_RE ORDER BY APPLICANTNUMBER_I DESC, REQUISITIONNUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP07L_1] TO [DYNGRP]
GO