SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AU010130N_1] (@BS int, @APPLICANTNUMBER_I numeric(19,5), @MSEQUENCE_I smallint, @APPLICANTNUMBER_I_RS numeric(19,5), @MSEQUENCE_I_RS smallint, @APPLICANTNUMBER_I_RE numeric(19,5), @MSEQUENCE_I_RE smallint) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  MSEQUENCE_I, APPLICANTNUMBER_I, MSTRING_I_1, MSTRING_I_2, MSTRING_I_3, MSTRING_I_4, MSTRING_I_5, MLINT_I_1, MLINT_I_2, MLINT_I_3, MLINT_I_4, MLINT_I_5, MDLR_I_1, MDLR_I_2, MDLR_I_3, MDLR_I_4, MDLR_I_5, MCHECK_I_1, MCHECK_I_2, MCHECK_I_3, MCHECK_I_4, MCHECK_I_5, MCHECK_I_6, MCHECK_I_7, MCHECK_I_8, MCHECK_I_9, MCHECK_I_10, MDATE1_I, MDATE2_I, MDATE3_I, MDATE4_I, MDATE5_I, MTIME_I_1, MTIME_I_2, MTIME_I_3, MTIME_I_4, MTIME_I_5, NOTESINDEX_I, DEX_ROW_ID FROM .AU010130 WHERE ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND MSEQUENCE_I > @MSEQUENCE_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, MSEQUENCE_I ASC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  MSEQUENCE_I, APPLICANTNUMBER_I, MSTRING_I_1, MSTRING_I_2, MSTRING_I_3, MSTRING_I_4, MSTRING_I_5, MLINT_I_1, MLINT_I_2, MLINT_I_3, MLINT_I_4, MLINT_I_5, MDLR_I_1, MDLR_I_2, MDLR_I_3, MDLR_I_4, MDLR_I_5, MCHECK_I_1, MCHECK_I_2, MCHECK_I_3, MCHECK_I_4, MCHECK_I_5, MCHECK_I_6, MCHECK_I_7, MCHECK_I_8, MCHECK_I_9, MCHECK_I_10, MDATE1_I, MDATE2_I, MDATE3_I, MDATE4_I, MDATE5_I, MTIME_I_1, MTIME_I_2, MTIME_I_3, MTIME_I_4, MTIME_I_5, NOTESINDEX_I, DEX_ROW_ID FROM .AU010130 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND MSEQUENCE_I BETWEEN @MSEQUENCE_I_RS AND @MSEQUENCE_I_RE AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND MSEQUENCE_I > @MSEQUENCE_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, MSEQUENCE_I ASC END ELSE BEGIN SELECT TOP 25  MSEQUENCE_I, APPLICANTNUMBER_I, MSTRING_I_1, MSTRING_I_2, MSTRING_I_3, MSTRING_I_4, MSTRING_I_5, MLINT_I_1, MLINT_I_2, MLINT_I_3, MLINT_I_4, MLINT_I_5, MDLR_I_1, MDLR_I_2, MDLR_I_3, MDLR_I_4, MDLR_I_5, MCHECK_I_1, MCHECK_I_2, MCHECK_I_3, MCHECK_I_4, MCHECK_I_5, MCHECK_I_6, MCHECK_I_7, MCHECK_I_8, MCHECK_I_9, MCHECK_I_10, MDATE1_I, MDATE2_I, MDATE3_I, MDATE4_I, MDATE5_I, MTIME_I_1, MTIME_I_2, MTIME_I_3, MTIME_I_4, MTIME_I_5, NOTESINDEX_I, DEX_ROW_ID FROM .AU010130 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND MSEQUENCE_I BETWEEN @MSEQUENCE_I_RS AND @MSEQUENCE_I_RE AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND MSEQUENCE_I > @MSEQUENCE_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, MSEQUENCE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AU010130N_1] TO [DYNGRP]
GO
