SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_aagErrorL_1] (@aaGLWorkAssignID_RS int, @aaGLWorkDistID_RS int, @aaGLWorkHdrID_RS int, @aaGLWorkAssignID_RE int, @aaGLWorkDistID_RE int, @aaGLWorkHdrID_RE int) AS  set nocount on IF @aaGLWorkAssignID_RS IS NULL BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError ORDER BY aaGLWorkAssignID DESC, aaGLWorkDistID DESC, aaGLWorkHdrID DESC, DEX_ROW_ID DESC END ELSE IF @aaGLWorkAssignID_RS = @aaGLWorkAssignID_RE BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE aaGLWorkAssignID = @aaGLWorkAssignID_RS AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE ORDER BY aaGLWorkAssignID DESC, aaGLWorkDistID DESC, aaGLWorkHdrID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE aaGLWorkAssignID BETWEEN @aaGLWorkAssignID_RS AND @aaGLWorkAssignID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE ORDER BY aaGLWorkAssignID DESC, aaGLWorkDistID DESC, aaGLWorkHdrID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_aagErrorL_1] TO [DYNGRP]
GO
