SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[glInquiryBrowse] @JRNENTRY         INTEGER OUTPUT, @Year             INTEGER OUTPUT, @TRXDATE          DATETIME OUTPUT, @RCTRXSEQ    NUMERIC(19,5) OUTPUT, @HISTOPN    INTEGER OUTPUT, @OpBrowse     INTEGER   AS  DECLARE @SlNo INTEGER   IF EXISTS(SELECT TOP 1 1 FROM GLInqBrowseview WHERE JRNENTRY = @JRNENTRY AND GLYear = @Year AND TRXDATE = @TRXDATE AND RCTRXSEQ = @RCTRXSEQ ) BEGIN  select @SlNo = SLNO,@HISTOPN = HISTOPN FROM GLInqBrowseview WHERE JRNENTRY = @JRNENTRY AND GLYear = @Year AND TRXDATE = @TRXDATE AND RCTRXSEQ = @RCTRXSEQ  IF @OpBrowse = 1   BEGIN  SELECT @SlNo = MIN(SLNO) FROM GLInqBrowseview  END   ELSE IF @OpBrowse = 2   BEGIN  SELECT @SlNo = @SlNo  - 1  END  ELSE IF @OpBrowse = 3   BEGIN  SELECT @SlNo = @SlNo  + 1  END  ELSE IF @OpBrowse = 4   BEGIN  SELECT @SlNo = MAX(SLNO) FROM GLInqBrowseview  END END  ELSE BEGIN  IF @OpBrowse = 1   BEGIN  SELECT @SlNo = MIN(SLNO) FROM GLInqBrowseview  END   ELSE IF @OpBrowse = 2   BEGIN  SELECT @SlNo = 0  END  ELSE IF @OpBrowse = 3   BEGIN  SELECT @SlNo = MIN(SLNO) FROM GLInqBrowseview  END  ELSE IF @OpBrowse = 4   BEGIN  SELECT @SlNo = MAX(SLNO) FROM GLInqBrowseview  END END  IF EXISTS(SELECT TOP 1 1 FROM GLInqBrowseview WHERE SLNO = @SlNo) BEGIN  SELECT @JRNENTRY = JRNENTRY, @Year = GLYear, @TRXDATE = TRXDATE, @RCTRXSEQ = RCTRXSEQ, @HISTOPN = HISTOPN FROM GLInqBrowseview WHERE SLNO = @SlNo END     
GO
GRANT EXECUTE ON  [dbo].[glInquiryBrowse] TO [DYNGRP]
GO
