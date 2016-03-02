SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagRealTimeCreateRecordsInaaGL] @I_BatchNum char(15), @I_caaAuditTrailPrefix  char(5), @I_cUserID  char(37), @O_fSuccess tinyint = 1 output AS Begin   DECLARE @JrnEntry int,  @aaGLHdrID int,  @fSuccess tinyint,  @cTrxSource char(13),  @caaAuditTrailCode char(13),  @nYear smallint,  @fHist tinyint,  @cglHistAuditTrailCode char(13),  @nTrxState smallint,  @dtglPostDate datetime,  @nRecTrxSeq numeric(19,5),  @nSuccess  smallint   SELECT @nTrxState = 0  DECLARE aaCurGetJrnlNumbs cursor fast_forward FOR   SELECT DISTINCT JRNENTRY FROM GL10000  WHERE BACHNUMB = @I_BatchNum  OPEN aaCurGetJrnlNumbs   FETCH NEXT FROM aaCurGetJrnlNumbs   INTO @JrnEntry  WHILE @@FETCH_STATUS = 0  BEGIN  FETCH NEXT FROM aaCurGetJrnlNumbs INTO @JrnEntry  END  CLOSE aaCurGetJrnlNumbs  DEALLOCATE aaCurGetJrnlNumbs  END    
GO
GRANT EXECUTE ON  [dbo].[aagRealTimeCreateRecordsInaaGL] TO [DYNGRP]
GO
