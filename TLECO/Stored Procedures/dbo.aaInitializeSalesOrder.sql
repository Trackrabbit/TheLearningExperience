SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aaInitializeSalesOrder]  @DOCNUMBR CHAR(21),  @SOPTYPE SMALLINT,  @SOPNUMBE CHAR(21),  @SEQNUMBR1 INT,  @CompanyID SMALLINT,  @SqlSessionID INT,  @ChgFlag TINYINT,  @l_nXCHGRATE NUMERIC(19,7),  @l_RTCLCMTD SMALLINT,  @aaSubLedgerHdrID INT OUTPUT,  @l_ErrorCode SMALLINT = NULL OUTPUT AS  BEGIN   DECLARE   @SEQNUMBR INT,  @SERIES SMALLINT,  @DISTTYPE SMALLINT,  @CURNCYID CHAR(15),  @CURRNIDX SMALLINT,  @GLPOSTDT DATETIME,  @AMNTPAID NUMERIC(19,7),  @OAMTPAID NUMERIC(19,7),  @CASHINDEX INTEGER,  @DEPINDEX INTEGER,  @aaSubLedgerDistID INTEGER,  @ACTINDX INTEGER,  @ACCTTYPE SMALLINT,  @ClassID INT,   @aaBrowseType SMALLINT,  @DECPLCUR   SMALLINT,  @DEBITAMT   NUMERIC(19,7),  @ORGDBTAMT  NUMERIC(19,7),  @CRDTAMT    NUMERIC(19,7),  @ORGCRDTAMT NUMERIC(19,7),  @NOTEINDX   NUMERIC(19,5),  @oRequiredFieldEmpty TINYINT  SELECT @SERIES = 3, @aaSubLedgerDistID = 1, @SEQNUMBR = 16384,@aaSubLedgerHdrID = 0  SELECT TOP 1  @DISTTYPE = PYMTTYPE, @CURNCYID = CURNCYID, @CURRNIDX = CURRNIDX,  @GLPOSTDT = GLPOSTDT, @AMNTPAID = AMNTPAID, @OAMTPAID = OAMTPAID, @CASHINDEX = CASHINDEX , @DEPINDEX = DEPINDEX  FROM SOP10103 where SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND DOCNUMBR = @DOCNUMBR ORDER BY SEQNUMBR DESC   SELECT @aaSubLedgerHdrID = ISNULL(aaSubLedgerHdrID,0) FROM AAG20000 WHERE DOCNUMBR = @DOCNUMBR AND DOCTYPE = @SOPTYPE AND SERIES = @SERIES  IF @aaSubLedgerHdrID = 0 and exists (SELECT TOP 1 1 FROM SOP10103 where SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE ORDER BY SEQNUMBR DESC)  BEGIN  EXEC DYNAMICS.dbo.aagGetNextID 20000, @CompanyID, @aaSubLedgerHdrID output    INSERT INTO AAG20000  (aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,Master_ID,aaHdrErrors)  values   (@aaSubLedgerHdrID,@SERIES,@SOPTYPE,@DOCNUMBR,'',0)   END   IF @ChgFlag = 1   EXEC aagDelSubLedgerHdr @aaSubLedgerHdrID,0,0  ELSE  RETURN   SELECT TOP 1 @DECPLCUR = A.DECPLCUR-1 FROM DYNAMICS..MC40200 A WHERE A.CURNCYID = @CURNCYID   While @aaSubLedgerDistID <= 2  BEGIN  IF @aaSubLedgerDistID = 1  BEGIN  SELECT @ACTINDX = @CASHINDEX,   @DEBITAMT   = @AMNTPAID,   @ORGDBTAMT  = @OAMTPAID,   @CRDTAMT    = 0,   @ORGCRDTAMT = 0  END  ELSE  BEGIN  SELECT @ACTINDX = @DEPINDEX,  @DEBITAMT   = 0,   @ORGDBTAMT  = 0,   @CRDTAMT    = @AMNTPAID,   @ORGCRDTAMT = @OAMTPAID  END   SELECT TOP 1 @ACCTTYPE = ACCTTYPE FROM GL00100 WHERE @ACTINDX = @ACTINDX  EXEC aagGetClassIDBrowseType   @ACTINDX,   @ClassID OUTPUT,   @aaBrowseType OUTPUT    EXEC DYNAMICS.dbo.smGetNextNoteIndex @CompanyID, @SqlSessionID, @NOTEINDX output   INSERT INTO AAG20001 (  [aaSubLedgerHdrID], [aaSubLedgerDistID], [INTERID], [CorrespondingUnit], [ACTINDX], [DISTTYPE], [SEQNUMBR],[XCHGRATE],[RTCLCMTD],  [ACCTTYPE], [aaBrowseType], [DECPLACS], [DEBITAMT], [ORDBTAMT], [CRDTAMNT],  [ORCRDAMT], [CURNCYID],   [CURRNIDX],  [GLPOSTDT], [aaCopyStatus], [aaWinWasOpen],  [aaChangeDate],[aaChangeTime])  VALUES (   @aaSubLedgerHdrID, @aaSubLedgerDistID, DB_NAME(), '', @ACTINDX, @DISTTYPE, @SEQNUMBR, @l_nXCHGRATE,@l_RTCLCMTD,  ISNULL(@ACCTTYPE,0), @aaBrowseType, ISNULL( @DECPLCUR,0), @DEBITAMT, @ORGDBTAMT, @CRDTAMT, @ORGCRDTAMT, @CURNCYID,   @CURRNIDX, @GLPOSTDT, 8, 0, CONVERT(CHAR(12), GETDATE(), 102), CONVERT(CHAR(12), GETDATE(), 108))   INSERT INTO AAG20002 ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [DEBITAMT], [ORDBTAMT], [CRDTAMNT],  [ORCRDAMT], [aaAssignedPercent],[NOTEINDX])  VALUES( @aaSubLedgerHdrID, @aaSubLedgerDistID, 1, @DEBITAMT, @ORGDBTAMT, @CRDTAMT, @ORGCRDTAMT, 10000, @NOTEINDX)   IF @aaBrowseType <> 0   AND NOT EXISTS  (SELECT 1 FROM AAG20003  WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID  AND aaSubLedgerDistID = @aaSubLedgerDistID   AND aaSubLedgerAssignID = 1)  BEGIN   EXEC aagSubWorkCodeUpdate   @aaSubLedgerHdrID,   @aaSubLedgerDistID,   1,   @ClassID,   @oRequiredFieldEmpty OUTPUT  END  SET @aaSubLedgerDistID = @aaSubLedgerDistID + 1  SET @SEQNUMBR = @SEQNUMBR + 16384  END  END    
GO
GRANT EXECUTE ON  [dbo].[aaInitializeSalesOrder] TO [DYNGRP]
GO