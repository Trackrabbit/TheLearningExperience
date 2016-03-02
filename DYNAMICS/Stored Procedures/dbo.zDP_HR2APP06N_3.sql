SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP06N_3] (@BS int, @TESTSCORE_I char(21), @STRTDATE datetime, @DEX_ROW_ID int, @TESTSCORE_I_RS char(21), @STRTDATE_RS datetime, @TESTSCORE_I_RE char(21), @STRTDATE_RE datetime) AS  set nocount on IF @TESTSCORE_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE ( TESTSCORE_I = @TESTSCORE_I AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR TESTSCORE_I = @TESTSCORE_I AND STRTDATE < @STRTDATE OR TESTSCORE_I > @TESTSCORE_I ) ORDER BY TESTSCORE_I ASC, STRTDATE DESC, DEX_ROW_ID ASC END ELSE IF @TESTSCORE_I_RS = @TESTSCORE_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE TESTSCORE_I = @TESTSCORE_I_RS AND STRTDATE BETWEEN @STRTDATE_RE AND @STRTDATE_RS AND ( TESTSCORE_I = @TESTSCORE_I AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR TESTSCORE_I = @TESTSCORE_I AND STRTDATE < @STRTDATE OR TESTSCORE_I > @TESTSCORE_I ) ORDER BY TESTSCORE_I ASC, STRTDATE DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE TESTSCORE_I BETWEEN @TESTSCORE_I_RS AND @TESTSCORE_I_RE AND STRTDATE BETWEEN @STRTDATE_RE AND @STRTDATE_RS AND ( TESTSCORE_I = @TESTSCORE_I AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR TESTSCORE_I = @TESTSCORE_I AND STRTDATE < @STRTDATE OR TESTSCORE_I > @TESTSCORE_I ) ORDER BY TESTSCORE_I ASC, STRTDATE DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP06N_3] TO [DYNGRP]
GO
