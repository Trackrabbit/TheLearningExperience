SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10003SS_1] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaTrxDimID, aaTrxCodeID, aaCodeErrors, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10003 WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID AND aaTrxDimID = @aaTrxDimID ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10003SS_1] TO [DYNGRP]
GO
