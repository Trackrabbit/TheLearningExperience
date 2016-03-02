SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[aagCreateSubLedgerCodes]  @SubLedgerHdrID INT, @SubLedgerDistID INT, @SubLedgerAssignID INT, @AuditCtrlCode VARCHAR(15), @SeqNumbr INT, @AliasID INT, @AcctIdx INT AS  DECLARE @TrxDimID INT, @TrxDimCodeID INT, @RecordExists SMALLINT   SET @RecordExists = 0  DECLARE CreateCodeRecords CURSOR FAST_FORWARD  FOR  SELECT A1.aaTrxDimID,   CASE   WHEN A1.aaDataEntry = 4 THEN A1.aaTrxDimCodeIDDflt   ELSE (CASE WHEN ISNULL(A3.aaTrxDimCodeID, 0) <> 0 THEN A3.aaTrxDimCodeID ELSE A1.aaTrxDimCodeIDDflt END)  END AS aaTrxDimCodeID   FROM AAG00202 A1   INNER JOIN AAG00200 A2 ON A1.aaAcctClassID = A2.aaAcctClassID   LEFT OUTER JOIN AAG00801 A3 ON A3.aaAliasID = @AliasID AND A1.aaTrxDimID = A3.aaTrxDimID  WHERE A1.aaDataEntry <> 1 AND A2.ACTINDX = @AcctIdx   OPEN CreateCodeRecords   FETCH NEXT FROM CreateCodeRecords INTO @TrxDimID, @TrxDimCodeID  WHILE @@FETCH_STATUS = 0  BEGIN  INSERT INTO AAG20003(aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaTrxDimID, aaTrxCodeID)  VALUES(@SubLedgerHdrID, @SubLedgerDistID, @SubLedgerAssignID, @TrxDimID, @TrxDimCodeID)  FETCH NEXT FROM CreateCodeRecords INTO @TrxDimID, @TrxDimCodeID  END  CLOSE CreateCodeRecords  DEALLOCATE CreateCodeRecords    
GO
GRANT EXECUTE ON  [dbo].[aagCreateSubLedgerCodes] TO [DYNGRP]
GO
