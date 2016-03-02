SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[aagReNumberPMDistID] @SubLedgerHrdID int AS BEGIN  Update AAG20001 SET aaSubLedgerDistID=0-aaSubLedgerDistID   where aaSubLedgerHdrID = @SubLedgerHrdID  Update AAG20002 SET aaSubLedgerDistID=0-aaSubLedgerDistID   where aaSubLedgerHdrID = @SubLedgerHrdID    Update AAG20003 SET aaSubLedgerDistID=0-aaSubLedgerDistID   where aaSubLedgerHdrID = @SubLedgerHrdID   UPDATE AAG20002   SET aaSubLedgerDistID = (SELECT COUNT(1) FROM AAG20001 AA WHERE A1.SEQNUMBR >= AA.SEQNUMBR AND AA.aaSubLedgerHdrID = A1.aaSubLedgerHdrID )   from AAG20001 A1   where AAG20002.aaSubLedgerHdrID=A1.aaSubLedgerHdrID   and AAG20002.aaSubLedgerDistID=A1.aaSubLedgerDistID   and AAG20002.aaSubLedgerHdrID = @SubLedgerHrdID   UPDATE AAG20003  SET aaSubLedgerDistID = (SELECT COUNT(1) FROM AAG20001 AA WHERE A1.SEQNUMBR >= AA.SEQNUMBR  AND AA.aaSubLedgerHdrID = A1.aaSubLedgerHdrID)   from AAG20001 A1   where AAG20003.aaSubLedgerHdrID=A1.aaSubLedgerHdrID   and AAG20003.aaSubLedgerDistID=A1.aaSubLedgerDistID  and AAG20003.aaSubLedgerHdrID = @SubLedgerHrdID   UPDATE AAG20001   SET aaSubLedgerDistID = (SELECT COUNT(1) FROM AAG20001 AA WHERE AAG20001.SEQNUMBR >= AA.SEQNUMBR AND AA.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID )  where AAG20001.aaSubLedgerHdrID = @SubLedgerHrdID END    
GO
GRANT EXECUTE ON  [dbo].[aagReNumberPMDistID] TO [DYNGRP]
GO
