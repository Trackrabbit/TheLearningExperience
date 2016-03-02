SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP06SS_3] (@TESTSCORE_I char(21), @STRTDATE datetime) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE, DEX_ROW_ID FROM .HR2APP06 WHERE TESTSCORE_I = @TESTSCORE_I AND STRTDATE = @STRTDATE ORDER BY TESTSCORE_I ASC, STRTDATE DESC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP06SS_3] TO [DYNGRP]
GO
