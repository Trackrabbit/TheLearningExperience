SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10002SS_1] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int) AS  set nocount on SELECT TOP 1  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX, aaAssignErrors, aaAliasID, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10002 WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10002SS_1] TO [DYNGRP]
GO
