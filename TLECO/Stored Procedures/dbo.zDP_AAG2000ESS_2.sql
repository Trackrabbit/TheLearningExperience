SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG2000ESS_2] (@AADOCVAL tinyint, @aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @aaErrorNum smallint) AS  set nocount on SELECT TOP 1  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG2000E WHERE AADOCVAL = @AADOCVAL AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID AND aaSubLedgerAssignID = @aaSubLedgerAssignID AND aaErrorNum = @aaErrorNum ORDER BY AADOCVAL ASC, aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC, aaErrorNum ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG2000ESS_2] TO [DYNGRP]
GO
