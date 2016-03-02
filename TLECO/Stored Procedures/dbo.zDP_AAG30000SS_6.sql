SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000SS_6] (@JRNENTRY int) AS  set nocount on SELECT TOP 1  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE JRNENTRY = @JRNENTRY ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000SS_6] TO [DYNGRP]
GO
