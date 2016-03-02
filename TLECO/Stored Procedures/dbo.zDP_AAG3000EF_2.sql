SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG3000EF_2] (@AADOCVAL_RS tinyint, @aaGLWorkHdrID_RS int, @aaGLWorkDistID_RS int, @aaGLWorkAssignID_RS int, @aaErrorNum_RS smallint, @AADOCVAL_RE tinyint, @aaGLWorkHdrID_RE int, @aaGLWorkDistID_RE int, @aaGLWorkAssignID_RE int, @aaErrorNum_RE smallint) AS  set nocount on IF @AADOCVAL_RS IS NULL BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E ORDER BY AADOCVAL ASC, aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, aaErrorNum ASC, DEX_ROW_ID ASC END ELSE IF @AADOCVAL_RS = @AADOCVAL_RE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE AADOCVAL = @AADOCVAL_RS AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkAssignID BETWEEN @aaGLWorkAssignID_RS AND @aaGLWorkAssignID_RE AND aaErrorNum BETWEEN @aaErrorNum_RS AND @aaErrorNum_RE ORDER BY AADOCVAL ASC, aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, aaErrorNum ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE AADOCVAL BETWEEN @AADOCVAL_RS AND @AADOCVAL_RE AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkAssignID BETWEEN @aaGLWorkAssignID_RS AND @aaGLWorkAssignID_RE AND aaErrorNum BETWEEN @aaErrorNum_RS AND @aaErrorNum_RE ORDER BY AADOCVAL ASC, aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, aaErrorNum ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG3000EF_2] TO [DYNGRP]
GO