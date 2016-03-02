SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20003SI] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @aaTrxDimID int, @aaTrxCodeID int, @aaCodeErrors binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG20003 (aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaTrxDimID, aaTrxCodeID, aaCodeErrors) VALUES ( @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID, @aaTrxDimID, @aaTrxCodeID, @aaCodeErrors) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20003SI] TO [DYNGRP]
GO
