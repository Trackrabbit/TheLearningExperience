SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG2000ESI] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @aaDisplayDistID int, @AADOCVAL tinyint, @aaErrorNum smallint, @aaAcctClassID int, @aaTrxDim char(31), @aaTrxDimCode char(31), @aaRelatedTrxDim char(15), @aaRelatedTrxDimCode char(31), @ERRDESCR char(131), @aaAccountClass char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG2000E (aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaAcctClassID, aaTrxDim, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass) VALUES ( @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID, @aaDisplayDistID, @AADOCVAL, @aaErrorNum, @aaAcctClassID, @aaTrxDim, @aaTrxDimCode, @aaRelatedTrxDim, @aaRelatedTrxDimCode, @ERRDESCR, @aaAccountClass) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG2000ESI] TO [DYNGRP]
GO
