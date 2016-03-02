SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTS022L_1] (@EMPID_I_RS char(15), @ISEQUENCENUMBER_I_RS smallint, @EMPID_I_RE char(15), @ISEQUENCENUMBER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHRTS022 ORDER BY EMPID_I DESC, ISEQUENCENUMBER_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHRTS022 WHERE EMPID_I = @EMPID_I_RS AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY EMPID_I DESC, ISEQUENCENUMBER_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .AHRTS022 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY EMPID_I DESC, ISEQUENCENUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTS022L_1] TO [DYNGRP]
GO
