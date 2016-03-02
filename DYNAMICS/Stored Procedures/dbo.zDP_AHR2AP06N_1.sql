SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP06N_1] (@BS int, @APPLICANTNUMBER_I numeric(19,5), @ISEQUENCENUMBER_I smallint, @APPLICANTNUMBER_I_RS numeric(19,5), @ISEQUENCENUMBER_I_RS smallint, @APPLICANTNUMBER_I_RE numeric(19,5), @ISEQUENCENUMBER_I_RE smallint) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHR2AP06 WHERE ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHR2AP06 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHR2AP06 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE AND ( APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I OR APPLICANTNUMBER_I > @APPLICANTNUMBER_I ) ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP06N_1] TO [DYNGRP]
GO
