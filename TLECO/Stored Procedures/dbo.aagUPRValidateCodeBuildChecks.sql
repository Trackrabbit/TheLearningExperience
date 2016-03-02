SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagUPRValidateCodeBuildChecks]  @I_cTableAssign nvarchar(30) = null,  @I_cTableCode nvarchar(30) = null,  @I_cTableError nvarchar(30) = null,  @I_cUserID VARCHAR(20), @O_fValidCode tinyint = 1 output   as Begin  DECLARE @nHdrID INT  DECLARE @fValidCode  tinyint   SET @O_fValidCode = 1   DECLARE curPostEdits CURSOR fast_forward FOR  SELECT aaSubLedgerHdrID   FROM UPR10301 bHdr inner join UPR10302 bTrx on bHdr.BACHNUMB = bTrx.BACHNUMB  inner join (select * from AAG20000 where SERIES = 6 and DOCTYPE = 1) aHdr on aHdr.DOCNUMBR = bTrx.COMPTRNM  where UPRBCHOR = 1 and MKDBYUSR = @I_cUserID  OPEN curPostEdits  FETCH NEXT FROM curPostEdits INTO @nHdrID  WHILE @@fetch_status = 0   BEGIN  SET @fValidCode = 1  exec aagValidateCodeSubLedHdr  @I_cTableAssign,  @I_cTableCode,  @I_cTableError,  @nHdrID,  @fValidCode OUTPUT,  @I_cUserID,  1  IF @fValidCode = 0   BEGIN  SET @O_fValidCode = 0  END  FETCH NEXT FROM curPostEdits INTO @nHdrID  END  close curPostEdits  deallocate curPostEdits End    
GO
GRANT EXECUTE ON  [dbo].[aagUPRValidateCodeBuildChecks] TO [DYNGRP]
GO
