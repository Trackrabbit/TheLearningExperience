SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG2000EF_1] (@aaSubLedgerHdrID_RS int, @aaSubLedgerDistID_RS int, @aaSubLedgerAssignID_RS int, @aaSubLedgerHdrID_RE int, @aaSubLedgerDistID_RE int, @aaSubLedgerAssignID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC, DEX_ROW_ID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND aaSubLedgerAssignID BETWEEN @aaSubLedgerAssignID_RS AND @aaSubLedgerAssignID_RE ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND aaSubLedgerAssignID BETWEEN @aaSubLedgerAssignID_RS AND @aaSubLedgerAssignID_RE ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG2000EF_1] TO [DYNGRP]
GO
