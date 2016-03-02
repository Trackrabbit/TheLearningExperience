SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP004N_1] (@BS int, @APPLICANTNUMBER_I numeric(19,5), @DEX_ROW_ID int, @APPLICANTNUMBER_I_RS numeric(19,5), @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPLYDATE_I, SEQORDER_I, APPINTCATCODE_I, CATEGORY_I, WEIGHTFACTOR_I, REVIEWSCORE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP004 WHERE ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, DEX_ROW_ID ASC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPLYDATE_I, SEQORDER_I, APPINTCATCODE_I, CATEGORY_I, WEIGHTFACTOR_I, REVIEWSCORE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP004 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPLYDATE_I, SEQORDER_I, APPINTCATCODE_I, CATEGORY_I, WEIGHTFACTOR_I, REVIEWSCORE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP004 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP004N_1] TO [DYNGRP]
GO
