SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG3000EN_1] (@BS int, @aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int, @DEX_ROW_ID int, @aaGLWorkHdrID_RS int, @aaGLWorkDistID_RS int, @aaGLWorkAssignID_RS int, @aaGLWorkHdrID_RE int, @aaGLWorkDistID_RE int, @aaGLWorkAssignID_RE int) AS  set nocount on IF @aaGLWorkHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID AND DEX_ROW_ID > @DEX_ROW_ID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID > @aaGLWorkAssignID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, DEX_ROW_ID ASC END ELSE IF @aaGLWorkHdrID_RS = @aaGLWorkHdrID_RE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE aaGLWorkHdrID = @aaGLWorkHdrID_RS AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkAssignID BETWEEN @aaGLWorkAssignID_RS AND @aaGLWorkAssignID_RE AND ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID AND DEX_ROW_ID > @DEX_ROW_ID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID > @aaGLWorkAssignID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND aaGLWorkAssignID BETWEEN @aaGLWorkAssignID_RS AND @aaGLWorkAssignID_RE AND ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID = @aaGLWorkAssignID AND DEX_ROW_ID > @DEX_ROW_ID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID = @aaGLWorkDistID AND aaGLWorkAssignID > @aaGLWorkAssignID OR aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC, aaGLWorkAssignID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG3000EN_1] TO [DYNGRP]
GO