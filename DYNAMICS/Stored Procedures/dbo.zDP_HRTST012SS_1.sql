SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRTST012SS_1] (@TESTCODE_I char(7)) AS  set nocount on SELECT TOP 1  TESTCODE_I, TEST_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HRTST012 WHERE TESTCODE_I = @TESTCODE_I ORDER BY TESTCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTST012SS_1] TO [DYNGRP]
GO
