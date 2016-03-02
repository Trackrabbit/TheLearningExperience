SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG3000ESS_1] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int) AS  set nocount on SELECT TOP 1  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG3000ESS_1] TO [DYNGRP]
GO
