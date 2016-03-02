SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG2000EF_3] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG2000EF_3] TO [DYNGRP]
GO
