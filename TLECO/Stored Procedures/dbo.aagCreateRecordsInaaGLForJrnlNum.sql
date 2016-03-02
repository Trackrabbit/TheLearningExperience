SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreateRecordsInaaGLForJrnlNum] @JrnEntry int, @I_caaAuditTrailPrefix  char(5), @I_cUserID  char(37), @I_nMCRegistered tinyint, @I_nPERCENT_FACTOR int = 0, @I_nDECPLfunCUR int = 0 AS Begin  set nocount on  DECLARE @aaGLHdrID   int,  @fSuccess tinyint,  @cTrxSource char(13),  @caaAuditTrailCode  char(13),  @nYear    smallint,  @fHist    tinyint,  @cglHistAuditTrailCode  char(13),  @nTrxState smallint,  @dtglPostDate datetime,  @nRecTrxSeq   numeric(19,5),  @nRecrngTrx   tinyint,  @nCompanyID smallint,  @nTrxType   smallint,  @nSuccess   smallint,  @TRXDATE datetime,  @cTrxSourcerev char(13),  @RVRSNGDT datetime,  @aaGLHdrIDNew int,  @Max int,  @Postflag int,  @Check int,  @BatchNumb char(15),  @BCHSOURC char(15),  @TRXHISTYEAR tinyint,  @ALWHISTPSTNG tinyint,   @FUNLCURR char(15),  @CURNCYID char(15),  @nOpenYear    smallint,  @aaGLHistHdrID   int,  @l_nRun_Reconcile_Flag int,  @l_nSQL_Error_State int,  @l_nNextYear INT,  @l_Ledger_ID smallint   SELECT @nRecrngTrx = 0, @nRecTrxSeq = 0, @nTrxType = 0  Select @nCompanyID = CMPANYID FROM DYNAMICS..SY01500 WHERE INTERID = DB_NAME()  Select @aaGLHdrID  = aaGLWorkHdrID FROM AAG10000 WHERE JRNENTRY = @JrnEntry  Select @fHist = HISTRX, @nRecTrxSeq = RCTRXSEQ, @nTrxType = TRXTYPE , @TRXDATE = TRXDATE, @RVRSNGDT = RVRSNGDT,  @nRecrngTrx = RCRNGTRX, @CURNCYID = CURNCYID FROM GL10000  WHERE JRNENTRY = @JrnEntry  IF  @@rowcount = 0  BEGIN   Select @fHist = HISTRX,  @TRXDATE = TRXDATE FROM GL10100  WHERE JRNENTRY = @JrnEntry  set @Postflag = 1  IF @fHist = 1  Select @Max = isnull(max(SEQNUMBR),0) from GL30000  where  JRNENTRY = @JrnEntry and HSTYEAR = (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE DATE1 = (SELECT GLPOSTDT FROM AAG10000 where  aaGLWorkHdrID = @aaGLHdrID))  ELSE   Select @Max = isnull(max(SEQNUMBR),0) from GL20000 where  JRNENTRY = @JrnEntry and OPENYEAR = (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE DATE1 = (SELECT GLPOSTDT FROM AAG10000 where  aaGLWorkHdrID = @aaGLHdrID))  if @Max >0  update AAG10001 set SQNCLINE = @Max   where  aaGLWorkHdrID = @aaGLHdrID and aaOFFSETAcct = 1  Select @nRecTrxSeq = 1  END  IF (@nTrxType = 1 AND @nRecrngTrx = 1)   SELECT @nRecTrxSeq = @nRecTrxSeq -1  UPDATE AAG10000 SET RCTRXSEQ = @nRecTrxSeq where JRNENTRY = @JrnEntry  IF exists (Select top 1 JRNENTRY FROM GL20000 WHERE JRNENTRY = @JrnEntry AND RCTRXSEQ=@nRecTrxSeq)  BEGIN  IF exists (Select top 1 JRNENTRY FROM GL20000 WHERE JRNENTRY = @JrnEntry and ((left(TRXSORCE,5) = 'GLTHS' OR left(TRXSORCE,5) = 'GLQHS') or left(TRXSORCE,5) = 'ICTHS'))  SELECT @fHist = 1  END  IF exists (Select JRNENTRY FROM GL20000 WHERE JRNENTRY = @JrnEntry AND RCTRXSEQ=@nRecTrxSeq) and (@fHist <> 1)  BEGIN   IF exists (Select BACHNUMB FROM GL10000 WHERE JRNENTRY = @JrnEntry)  begin  select @BatchNumb= BACHNUMB,@BCHSOURC = BCHSOURC FROM GL10000 WHERE JRNENTRY = @JrnEntry  if ((SELECT BACHFREQ FROM SY00500 WHERE BACHNUMB = @BatchNumb and BCHSOURC = @BCHSOURC)=8)  Select top 1 @cTrxSource = TRXSORCE, @nYear = OPENYEAR, @dtglPostDate = TRXDATE  FROM GL20000 WHERE JRNENTRY = @JrnEntry  and RCTRXSEQ=@nRecTrxSeq  and  ACTINDX > 0 and TRXDATE = @TRXDATE  and  PERIODID >= 0  order by TRXDATE, RCTRXSEQ desc  else  Select top 1 @cTrxSource = TRXSORCE, @nYear = OPENYEAR, @dtglPostDate = TRXDATE  FROM GL20000 WHERE JRNENTRY = @JrnEntry  and  ACTINDX > 0 and TRXDATE = @TRXDATE  and  PERIODID >= 0 and RCTRXSEQ=@nRecTrxSeq   order by TRXDATE, RCTRXSEQ  if @nRecTrxSeq > 1  begin  UPDATE AAG10001 SET AAG10001.CRDTAMNT = C.CRDTAMNT,AAG10001.DEBITAMT = C.DEBITAMT, AAG10001.ORCRDAMT = C.ORCRDAMT, AAG10001.ORDBTAMT = C.ORDBTAMT  FROM AAG10001 A   inner join AAG10000 B  ON A.aaGLWorkHdrID = B.aaGLWorkHdrID   inner join GL20000 C ON B.JRNENTRY = C.JRNENTRY and B.RCTRXSEQ=C.RCTRXSEQ and A.SQNCLINE = C.SEQNUMBR  WHERE A.aaGLWorkHdrID = @aaGLHdrID and C.JRNENTRY = @JrnEntry and C.TRXSORCE = @cTrxSource   if (SELECT SUM(CRDTAMNT+ORCRDAMT) FROM AAG10001 WHERE aaGLWorkHdrID = @aaGLHdrID) = 0 and (SELECT SUM(DEBITAMT+ORDBTAMT) FROM AAG10001 WHERE aaGLWorkHdrID = @aaGLHdrID)=0  begin  DELETE FROM AAG10003 WHERE aaGLWorkHdrID = @aaGLHdrID  DELETE FROM AAG10002 WHERE aaGLWorkHdrID = @aaGLHdrID and aaGLWorkAssignID > 1   UPDATE AAG10002 SET CRDTAMNT = 0,ORCRDAMT = 0, DEBITAMT = 0, ORDBTAMT = 0, aaAssignedPercent = 10000 where aaGLWorkHdrID = @aaGLHdrID  end  end  end  else  Select top 1 @cTrxSource = TRXSORCE, @nYear = OPENYEAR, @dtglPostDate = TRXDATE  FROM GL20000 WHERE JRNENTRY = @JrnEntry  and  ACTINDX > 0 and TRXDATE = @TRXDATE  and  PERIODID >= 0 and RCTRXSEQ=@nRecTrxSeq  order by TRXDATE, RCTRXSEQ  if exists (select top 1 AAG10001.aaGLWorkHdrID from AAG10001 Inner join AAG10000   on AAG10000.aaGLWorkHdrID = AAG10001.aaGLWorkHdrID   where AAG10000.JRNENTRY = @JrnEntry and RCTRXSEQ = @nRecTrxSeq and AAG10001.ACCTTYPE > 2) or   ((select isnull(count(1),0) from AAG10001 Inner join AAG10000   on AAG10000.aaGLWorkHdrID = AAG10001.aaGLWorkHdrID   where AAG10000.JRNENTRY = @JrnEntry and RCTRXSEQ = @nRecTrxSeq) <>   (select isnull(count(1),0) from GL10001 Inner join GL10000   on GL10000.JRNENTRY = GL10001.JRNENTRY   where GL10000.JRNENTRY = @JrnEntry and RCTRXSEQ = @nRecTrxSeq))  begin  exec aagCreateGLaaAllocationData  @JrnEntry,  @nRecTrxSeq,  @fHist,  @nYear,  @nCompanyID  end  else  begin  select @FUNLCURR = ''  select @FUNLCURR = FUNLCURR from MC40000  if  @FUNLCURR = @CURNCYID or len(ltrim(rtrim(@CURNCYID))) = 0  begin  update AAG10001 set ORCRDAMT = CRDTAMNT , ORDBTAMT = DEBITAMT where  aaGLWorkHdrID = (Select aaGLWorkHdrID from AAG10000 where AAG10000.JRNENTRY = @JrnEntry and RCTRXSEQ = @nRecTrxSeq) and aaGLWorkDistID > 0  update AAG10002 set ORCRDAMT = CRDTAMNT , ORDBTAMT = DEBITAMT where  aaGLWorkHdrID = (Select aaGLWorkHdrID from AAG10000 where AAG10000.JRNENTRY = @JrnEntry and RCTRXSEQ = @nRecTrxSeq) and aaGLWorkDistID > 0  and aaGLWorkAssignID > 0  end   end   exec aagBuildAuditTrailCode  @I_caaAuditTrailPrefix,  @caaAuditTrailCode output,  @nSuccess   exec aagCopyToGLFromGLWork  @aaGLHdrID,  @aaGLHdrIDNew output,  @nYear,  @cTrxSource,  @caaAuditTrailCode,  @fSuccess,  @nCompanyID,  @dtglPostDate  set @nTrxState = 1   END   ELSE  IF @fHist = 1   BEGIN  SELECT top 1 @cglHistAuditTrailCode = TRXSORCE  FROM GL20000 WHERE JRNENTRY = @JrnEntry  IF EXISTS (SELECT top 1 TRXSORCE FROM GL30000 WHERE TRXSORCE = @cglHistAuditTrailCode)  BEGIN  SELECT top 1 @nYear = HSTYEAR, @dtglPostDate = TRXDATE FROM GL30000 WHERE TRXSORCE = @cglHistAuditTrailCode AND JRNENTRY = @JrnEntry  SELECT @cTrxSource = @cglHistAuditTrailCode  exec aagPreCheck @Check output  if @Check > 0  begin  exec aagCreateGLaaAllocationData  @JrnEntry,  @nRecTrxSeq,  @fHist,  @nYear,  @nCompanyID  end    exec aagBuildAuditTrailCode  @I_caaAuditTrailPrefix,  @caaAuditTrailCode output,  @nSuccess   exec aagCopyToGLFromGLWork  @aaGLHdrID,  @aaGLHdrIDNew output,  @nYear,  @cglHistAuditTrailCode,  @caaAuditTrailCode,  @fSuccess,  @nCompanyID,  @dtglPostDate    set @nTrxState = 2   select @aaGLHistHdrID = @aaGLHdrIDNew  select @l_nNextYear = @nYear+1   exec aaClosedYearTransaction   @nYear,  @l_nNextYear,   @I_nPERCENT_FACTOR,   @I_nDECPLfunCUR,  @nCompanyID,  @I_caaAuditTrailPrefix,  @l_nRun_Reconcile_Flag,  @l_nSQL_Error_State,  @aaGLHdrIDNew output,  1,  0,  0,  0,  @I_nMCRegistered,  @aaGLHistHdrID,  0,  @JrnEntry   END  END   IF @nTrxState <>0   BEGIN  select @nTrxState = 0  IF @fHist = 1  begin  Insert into AAG70000 VALUES(@I_cUserID, 'GL_NORMAL', @aaGLHistHdrID, @JrnEntry, 2, @dtglPostDate, @cTrxSource,   @caaAuditTrailCode, @nRecTrxSeq, @nYear)    Insert into AAG70000 select @I_cUserID, 'GL_NORMAL', @aaGLHdrIDNew, @JrnEntry, 2, TRXDATE, TRXSORCE,   @caaAuditTrailCode, RCTRXSEQ, OPENYEAR FROM   (select top 1 TRXDATE, TRXSORCE, RCTRXSEQ, OPENYEAR from GL20000 where JRNENTRY = @JrnEntry) GL  end  else  begin  Insert into AAG70000 VALUES(@I_cUserID, 'GL_NORMAL', @aaGLHdrIDNew, @JrnEntry, 2, @dtglPostDate, @cTrxSource,   @caaAuditTrailCode, @nRecTrxSeq, @nYear)    end   IF @nTrxType = 1   begin   set @cTrxSourcerev = 'GLREV' + right(@cTrxSource,8)   if (select top 1 1 from GL20000 where JRNENTRY = @JrnEntry and (TRXSORCE LIKE 'ICTRX%' or TRXSORCE LIKE 'ICTHS%')) = 1  begin  set @cTrxSourcerev = 'ICREV' + right(@cTrxSource,8)  end  SELECT top 1 @cTrxSource = TRXSORCE, @nYear = OPENYEAR, @dtglPostDate = TRXDATE, @nRecTrxSeq = RCTRXSEQ, @l_Ledger_ID = Ledger_ID  from GL20000 where JRNENTRY = @JrnEntry and TRXSORCE = @cTrxSourcerev   IF @fHist = 1   begin   set @nRecTrxSeq  = 1  SELECT top 1 @cTrxSourcerev = TRXSORCE, @nYear = OPENYEAR, @dtglPostDate = TRXDATE, @nRecTrxSeq = RCTRXSEQ, @l_Ledger_ID = Ledger_ID  from GL20000 where JRNENTRY = @JrnEntry and (TRXSORCE like 'GLREV%' OR TRXSORCE like 'ICREV%')  SELECT @aaGLHdrIDNew = aaGLHdrID from AAG40000 WHERE JRNENTRY = @JrnEntry   end    exec aagBuildAuditTrailCode  @I_caaAuditTrailPrefix,  @caaAuditTrailCode output,  @nSuccess  exec aagReverseGL   @aaGLHdrIDNew,  @JrnEntry,  @nCompanyID,  @nYear,  @cTrxSourcerev,  @caaAuditTrailCode,  @I_cUserID,  @RVRSNGDT,  @nRecTrxSeq,  @fHist,  @l_Ledger_ID  end  Delete from AAG10000 where aaGLWorkHdrID = @aaGLHdrID  Delete from AAG10001 where aaGLWorkHdrID = @aaGLHdrID  Delete from AAG10002 where aaGLWorkHdrID = @aaGLHdrID  Delete from AAG10003 where aaGLWorkHdrID = @aaGLHdrID  END  ELSE  BEGIN   SELECT @nTrxState = 0  END  if @Postflag = 1  begin  Update AAG10000 set RCTRXSEQ = 0 where JRNENTRY = @JrnEntry  Update AAG10001 set SQNCLINE = 1200 where aaGLWorkHdrID in  (select aaGLWorkHdrID from AAG10000 where JRNENTRY = @JrnEntry and  aaOFFSETAcct = 1)  end  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagCreateRecordsInaaGLForJrnlNum] TO [DYNGRP]
GO
