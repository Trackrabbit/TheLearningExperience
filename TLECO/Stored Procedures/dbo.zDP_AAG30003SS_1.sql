SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30003SS_1] (@aaGLHdrID int, @aaGLDistID int, @aaGLAssignID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID, DEX_ROW_TS, DEX_ROW_ID FROM .AAG30003 WHERE aaGLHdrID = @aaGLHdrID AND aaGLDistID = @aaGLDistID AND aaGLAssignID = @aaGLAssignID AND aaTrxDimID = @aaTrxDimID ORDER BY aaGLHdrID ASC, aaGLDistID ASC, aaGLAssignID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30003SS_1] TO [DYNGRP]
GO
