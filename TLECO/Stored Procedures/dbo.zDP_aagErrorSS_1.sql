SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_aagErrorSS_1] (@aaGLWorkAssignID int, @aaGLWorkDistID int, @aaGLWorkHdrID int) AS  set nocount on SELECT TOP 1  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE aaGLWorkAssignID = @aaGLWorkAssignID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkHdrID = @aaGLWorkHdrID ORDER BY aaGLWorkAssignID ASC, aaGLWorkDistID ASC, aaGLWorkHdrID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_aagErrorSS_1] TO [DYNGRP]
GO
