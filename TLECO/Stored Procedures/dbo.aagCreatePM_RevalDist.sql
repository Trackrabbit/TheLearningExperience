SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreatePM_RevalDist]  @CntrlType SMALLINT,  @VoucherNo CHAR(21),  @DistSeqNo INT  AS BEGIN  DECLARE @aaSubLedgerHdrID INT,@aaSubLedgerDistID int,@aaSubLedgerAssignID int,@aaAssignedPercent int,@DistType INT,  @ACTINDX INT, @aaBrowseTypeNew INT, @ClassID INT, @oRequiredFieldEmpty INT, @OldaaSubLedgerDistID INT,  @DEBITAMT NUMERIC(19,5),@ORDBTAMT NUMERIC(19,5),@CRDTAMNT NUMERIC(19,5), @ORCRDAMT NUMERIC(19,5)   SELECT @aaSubLedgerHdrID = aaSubLedgerHdrID FROM AAG20000 WHERE DOCNUMBR = @VoucherNo AND DOCTYPE = @CntrlType  SELECT @aaSubLedgerDistID = max(aaSubLedgerDistID) + 1 FROM AAG20001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID   IF EXISTS (SELECT TOP 1 1 from PM10600 WHERE CNTRLTYP = @CntrlType AND VCHRNMBR = @VoucherNo AND DSTSQNUM = @DistSeqNo+ (SELECT MIN(DSTSQNUM) FROM PM10600 WHERE CNTRLTYP = @CntrlType AND VCHRNMBR = @VoucherNo))  INSERT INTO AAG20001  (aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, ACTINDX, DISTTYPE, aaBrowseType,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, SEQNUMBR,  GLPOSTDT, aaCustID, POSTED ,RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT,aaChangeDate,aaChangeTime,ACCTTYPE)   SELECT @aaSubLedgerHdrID,@aaSubLedgerDistID,  DB_NAME(), DSTINDX, PM.DISTTYPE, 1,  PM.DEBITAMT, PM.CRDTAMNT, PM.ORDBTAMT, PM.ORCRDAMT, ISNULL(PM.CURNCYID,' '), ISNULL(PM.CURRNIDX,0), @DistSeqNo,  PSTGDATE, VENDORID, 0, ISNULL(RATETPID,' '), ISNULL(EXGTBLID,' '), ISNULL(XCHGRATE,0), ISNULL(EXCHDATE,'1999-03-06 00:00:00.000'), ISNULL(TIME1,0),  ISNULL(RTCLCMTD,0), ISNULL(DENXRATE,0), ISNULL(MCTRXSTT,0),CONVERT(CHAR(12), GETDATE(), 102),CONVERT(CHAR(12), GETDATE(), 108),  dbo.aagGetAccountType(DSTINDX)  from PM10600 PM  inner join AAG20000 on aaSubLedgerHdrID =  @aaSubLedgerHdrID  inner join AAG20001 on AAG20000.aaSubLedgerHdrID =  AAG20001.aaSubLedgerHdrID and aaSubLedgerDistID = @aaSubLedgerDistID - 1  WHERE CNTRLTYP = @CntrlType   AND VCHRNMBR = @VoucherNo   AND DSTSQNUM = @DistSeqNo + (SELECT MIN(DSTSQNUM) FROM PM10600 WHERE CNTRLTYP = @CntrlType AND VCHRNMBR = @VoucherNo)  ELSE  INSERT INTO AAG20001  (aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, ACTINDX, DISTTYPE, aaBrowseType,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, SEQNUMBR,  GLPOSTDT, aaCustID, POSTED ,RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT,aaChangeDate,aaChangeTime,ACCTTYPE)   SELECT @aaSubLedgerHdrID,@aaSubLedgerDistID,  DB_NAME(), DSTINDX, DISTTYPE, 1,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, ISNULL(CURNCYID,' '), ISNULL(CURRNIDX,0), DSTSQNUM,  PSTGDATE, VENDORID, 0, ISNULL(RATETPID,' '), ISNULL(EXGTBLID,' '), ISNULL(XCHGRATE,0), ISNULL(EXCHDATE,'1999-03-06 00:00:00.000'), ISNULL(TIME1,0),  ISNULL(RTCLCMTD,0), ISNULL(DENXRATE,0), ISNULL(MCTRXSTT,0),CONVERT(CHAR(12), GETDATE(), 102),CONVERT(CHAR(12), GETDATE(), 108),  dbo.aagGetAccountType(DSTINDX)  from PM10100   WHERE CNTRLTYP = @CntrlType   AND VCHRNMBR = @VoucherNo   AND DSTSQNUM = @DistSeqNo  SELECT @ACTINDX = ACTINDX FROM AAG20001 WHERE AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID   AND AAG20001.aaSubLedgerDistID = @aaSubLedgerDistID  EXEC aagGetClassIDBrowseType   @ACTINDX,   @ClassID output,   @aaBrowseTypeNew output  SELECT @ACTINDX = ACTINDX,@DistType= DISTTYPE FROM AAG20001 WHERE AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID   AND AAG20001.aaSubLedgerDistID = @aaSubLedgerDistID   IF EXISTS (SELECT TOP 1 1 FROM AAG20001 WHERE AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID AND ACTINDX = @ACTINDX AND DISTTYPE = @DistType AND aaSubLedgerDistID <> @aaSubLedgerDistID)  SELECT TOP 1 @OldaaSubLedgerDistID = aaSubLedgerDistID FROM AAG20001 WHERE AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID AND ACTINDX = @ACTINDX AND DISTTYPE = @DistType AND aaSubLedgerDistID <> @aaSubLedgerDistID  ELSE  SELECT TOP 1 @OldaaSubLedgerDistID = AAG20003.aaSubLedgerDistID FROM AAG20001   INNER JOIN AAG20000 ON AAG20000.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID  INNER JOIN AAG20003 ON AAG20003.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID  AND AAG20003.aaSubLedgerDistID = AAG20001.aaSubLedgerDistID  AND AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID AND AAG20003.aaSubLedgerDistID <> @aaSubLedgerDistID  AND ((SERIES IN (12,4) AND DISTTYPE in (7, 2)) OR (SERIES IN (11, 3) AND DISTTYPE in (2,3)))    IF NOT EXISTS (SELECT @OldaaSubLedgerDistID)  SELECT TOP 1 @OldaaSubLedgerDistID = AAG20003.aaSubLedgerDistID FROM AAG20001   INNER JOIN AAG20000 ON AAG20000.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID  INNER JOIN AAG20003 ON AAG20003.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID  AND AAG20003.aaSubLedgerDistID = AAG20001.aaSubLedgerDistID  AND AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID AND AAG20003.aaSubLedgerDistID <> @aaSubLedgerDistID  AND SERIES IN (12,4) AND DISTTYPE in (6)    DECLARE MC_Reval CURSOR FAST_FORWARD  FOR  SELECT AAG20001.aaSubLedgerDistID,aaSubLedgerAssignID, aaAssignedPercent  FROM AAG20002   INNER JOIN AAG20001 ON AAG20002.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID   AND AAG20002.aaSubLedgerDistID = AAG20001.aaSubLedgerDistID  AND AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID   AND AAG20001.aaSubLedgerDistID = @OldaaSubLedgerDistID  ORDER BY aaSubLedgerAssignID  OPEN MC_Reval   FETCH NEXT FROM MC_Reval  INTO @OldaaSubLedgerDistID, @aaSubLedgerAssignID, @aaAssignedPercent  WHILE @@FETCH_STATUS = 0  BEGIN   INSERT INTO AAG20002 ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [DEBITAMT], [CRDTAMNT], [ORDBTAMT], [ORCRDAMT], [aaAssignedPercent], [DistRef], [NOTEINDX], [aaAssignErrors], [aaAliasID])  SELECT @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID,   CASE DEBITAMT WHEN 0 THEN DEBITAMT ELSE ROUND((DEBITAMT * @aaAssignedPercent)/10000,2) END,   CASE CRDTAMNT WHEN 0 THEN CRDTAMNT ELSE ROUND((CRDTAMNT * @aaAssignedPercent)/10000,2) END,   CASE ORDBTAMT WHEN 0 THEN ORDBTAMT ELSE ROUND((ORDBTAMT * @aaAssignedPercent)/10000,2) END,   CASE ORCRDAMT WHEN 0 THEN ORCRDAMT ELSE ROUND((ORCRDAMT * @aaAssignedPercent)/10000,2) END,   @aaAssignedPercent, ' ',0,0,0  FROM AAG20001  WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID  AND aaSubLedgerDistID = @aaSubLedgerDistID   IF @aaBrowseTypeNew <> 0   AND NOT EXISTS  (SELECT 1 FROM AAG20003  WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID  AND aaSubLedgerDistID = @aaSubLedgerDistID   AND aaSubLedgerAssignID = @aaSubLedgerAssignID)  BEGIN   EXEC aagSubWorkCodeUpdate   @aaSubLedgerHdrID,   @aaSubLedgerDistID,   @aaSubLedgerAssignID,   @ClassID,   @oRequiredFieldEmpty OUTPUT    UPDATE AAG20003 SET AAG20003.aaTrxCodeID = A3.aaTrxCodeID FROM AAG20003   INNER JOIN (SELECT aaSubLedgerHdrID,aaSubLedgerAssignID,aaTrxDimID,aaTrxCodeID FROM AAG20003 WHERE   aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @OldaaSubLedgerDistID AND aaSubLedgerAssignID=@aaSubLedgerAssignID) A3 on   AAG20003.aaTrxDimID=A3.aaTrxDimID AND   AAG20003.aaSubLedgerHdrID=@aaSubLedgerHdrID AND AAG20003.aaSubLedgerDistID = @aaSubLedgerDistID AND   AAG20003.aaSubLedgerAssignID=@aaSubLedgerAssignID  END    FETCH NEXT   FROM   MC_Reval  INTO  @OldaaSubLedgerDistID, @aaSubLedgerAssignID, @aaAssignedPercent  END  CLOSE MC_Reval  DEALLOCATE MC_Reval   IF (SELECT SUM(aaAssignedPercent) FROM AAG20002 WHERE aaSubLedgerHdrID=@aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID) >9900  BEGIN   IF (SELECT DEBITAMT+ORDBTAMT FROM AAG20001 WHERE aaSubLedgerHdrID=@aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID)>0   BEGIN  SELECT  @DEBITAMT =SUM(A2.DEBITAMT) - (SELECT DEBITAMT FROM AAG20001 WHERE aaSubLedgerHdrID=A2.aaSubLedgerHdrID AND aaSubLedgerDistID = A2.aaSubLedgerDistID) ,  @ORDBTAMT =SUM(A2.ORDBTAMT) - (SELECT ORDBTAMT FROM AAG20001 WHERE aaSubLedgerHdrID=A2.aaSubLedgerHdrID AND aaSubLedgerDistID = A2.aaSubLedgerDistID)   FROM AAG20002 A2 WHERE A2.aaSubLedgerHdrID=@aaSubLedgerHdrID AND A2.aaSubLedgerDistID = @aaSubLedgerDistID  GROUP BY A2.aaSubLedgerHdrID,A2.aaSubLedgerDistID  UPDATE AAG20002 SET DEBITAMT = DEBITAMT - @DEBITAMT,ORDBTAMT = ORDBTAMT - @ORDBTAMT FROM AAG20002   WHERE   aaSubLedgerHdrID=@aaSubLedgerHdrID   AND aaSubLedgerDistID = @aaSubLedgerDistID  AND aaSubLedgerAssignID = @aaSubLedgerAssignID  END  ELSE  BEGIN  SELECT  @CRDTAMNT =SUM(A2.CRDTAMNT) - (SELECT CRDTAMNT FROM AAG20001 WHERE aaSubLedgerHdrID=A2.aaSubLedgerHdrID AND aaSubLedgerDistID = A2.aaSubLedgerDistID) ,  @ORCRDAMT =SUM(A2.ORCRDAMT) - (SELECT ORCRDAMT FROM AAG20001 WHERE aaSubLedgerHdrID=A2.aaSubLedgerHdrID AND aaSubLedgerDistID = A2.aaSubLedgerDistID)   FROM AAG20002 A2 WHERE A2.aaSubLedgerHdrID=@aaSubLedgerHdrID AND A2.aaSubLedgerDistID = @aaSubLedgerDistID  GROUP BY A2.aaSubLedgerHdrID,A2.aaSubLedgerDistID  UPDATE AAG20002 SET CRDTAMNT = CRDTAMNT - @CRDTAMNT,ORCRDAMT = ORCRDAMT - @ORCRDAMT FROM AAG20002   WHERE   aaSubLedgerHdrID=@aaSubLedgerHdrID   AND aaSubLedgerDistID = @aaSubLedgerDistID  AND aaSubLedgerAssignID = @aaSubLedgerAssignID  END  END  UPDATE AAG20001 SET aaBrowseType = @aaBrowseTypeNew WHERE AAG20001.aaSubLedgerHdrID = @aaSubLedgerHdrID   AND AAG20001.aaSubLedgerDistID = @aaSubLedgerDistID  SET NOCOUNT OFF END     
GO
GRANT EXECUTE ON  [dbo].[aagCreatePM_RevalDist] TO [DYNGRP]
GO