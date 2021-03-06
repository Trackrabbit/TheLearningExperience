SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP06L_2] (@TESTCODE_I_RS char(7), @TESTSCORE_I_RS char(21), @TESTCODE_I_RE char(7), @TESTSCORE_I_RE char(21)) AS  set nocount on IF @TESTCODE_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 ORDER BY TESTCODE_I DESC, TESTSCORE_I ASC, DEX_ROW_ID DESC END ELSE IF @TESTCODE_I_RS = @TESTCODE_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE TESTCODE_I = @TESTCODE_I_RS AND TESTSCORE_I BETWEEN @TESTSCORE_I_RE AND @TESTSCORE_I_RS ORDER BY TESTCODE_I DESC, TESTSCORE_I ASC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE TESTCODE_I BETWEEN @TESTCODE_I_RS AND @TESTCODE_I_RE AND TESTSCORE_I BETWEEN @TESTSCORE_I_RE AND @TESTSCORE_I_RS ORDER BY TESTCODE_I DESC, TESTSCORE_I ASC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP06L_2] TO [DYNGRP]
GO
