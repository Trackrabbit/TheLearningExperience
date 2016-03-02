SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP07N_2] (@BS int, @REQUISITIONNUMBER_I int, @APPLICANTNUMBER_I numeric(19,5), @REQUISITIONNUMBER_I_RS int, @APPLICANTNUMBER_I_RS numeric(19,5), @REQUISITIONNUMBER_I_RE int, @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @REQUISITIONNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 WHERE ( REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I AND APPLICANTNUMBER_I > @APPLICANTNUMBER_I OR REQUISITIONNUMBER_I > @REQUISITIONNUMBER_I ) ORDER BY REQUISITIONNUMBER_I ASC, APPLICANTNUMBER_I ASC END ELSE IF @REQUISITIONNUMBER_I_RS = @REQUISITIONNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 WHERE REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I_RS AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND ( REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I AND APPLICANTNUMBER_I > @APPLICANTNUMBER_I OR REQUISITIONNUMBER_I > @REQUISITIONNUMBER_I ) ORDER BY REQUISITIONNUMBER_I ASC, APPLICANTNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, REQUISITIONNUMBER_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, TOTALCOSTS_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP07 WHERE REQUISITIONNUMBER_I BETWEEN @REQUISITIONNUMBER_I_RS AND @REQUISITIONNUMBER_I_RE AND APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND ( REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I AND APPLICANTNUMBER_I > @APPLICANTNUMBER_I OR REQUISITIONNUMBER_I > @REQUISITIONNUMBER_I ) ORDER BY REQUISITIONNUMBER_I ASC, APPLICANTNUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP07N_2] TO [DYNGRP]
GO
