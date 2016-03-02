SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create        PROCEDURE [dbo].[aagCreateRecordsInaaGLWorkForJrnlNum]  @aaGLHdrID  int AS Begin  set nocount on  DECLARE @fSuccess tinyint,  @cTrxSource char(13),   @nYear    smallint,   @nTrxState smallint,  @dtglPostDate datetime,  @nRecTrxSeq   numeric(19,5),  @nRecrngTrx   tinyint,  @nCompanyID smallint,  @nTrxType   smallint,  @TRXDATE datetime,   @aaGLHdrIDNew int,  @Max int,  @JrnEntry int   Select @nCompanyID = CMPANYID FROM DYNAMICS. .SY01500 WHERE INTERID = DB_NAME()  Select top 1 @JrnEntry = JRNENTRY , @cTrxSource = aaGLTRXSource, @nYear = YEAR1, @dtglPostDate = GLPOSTDT, @nRecTrxSeq = RCTRXSEQ  FROM AAG30000 WHERE aaGLHdrID = @aaGLHdrID    IF exists (Select top 1 JRNENTRY FROM GL20000 WHERE JRNENTRY = @JrnEntry)   BEGIN  Select top 1 @cTrxSource = aaGLTRXSource, @nYear = YEAR1, @dtglPostDate = GLPOSTDT, @nRecTrxSeq = RCTRXSEQ  FROM AAG30000 WHERE aaGLHdrID = @aaGLHdrID    exec aagCopyToGLWorkFromGL   @aaGLHdrID,  @aaGLHdrIDNew output,  @nYear,  @cTrxSource,  @fSuccess,  @nCompanyID  set @nTrxState = 1  exec aagCheckAcctLink @aaGLHdrIDNew  END   set nocount off END    
GO
GRANT EXECUTE ON  [dbo].[aagCreateRecordsInaaGLWorkForJrnlNum] TO [DYNGRP]
GO
