SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagUPRValidateCodeManualChecks]  @I_cTableAssign nvarchar(30) = null,  @I_cTableCode nvarchar(30) = null,  @I_cTableError nvarchar(30) = null,  @I_cBACHNUMB VARCHAR(15) = null, @I_nPYADNMBR int = null, @O_fValidCode tinyint = 1 output   as Begin  DECLARE @nHdrID INT  DECLARE @fValidCode  tinyint  DECLARE @l_cUserID varchar(20)   SET @l_cUserID = system_user  SET @O_fValidCode = 1  IF  ltrim(rtrim(@I_cBACHNUMB)) = ''  BEGIN  DECLARE curPostEdits CURSOR fast_forward FOR  SELECT aaSubLedgerHdrID   FROM AAG20000   WHERE SERIES = 6 and   DOCTYPE = 4 and   DOCNUMBR = CONVERT(VARCHAR(21),@I_nPYADNMBR)  END  ELSE  BEGIN  DECLARE curPostEdits CURSOR fast_forward FOR  SELECT aaSubLedgerHdrID   FROM UPR10307 UPR INNER JOIN   (SELECT * FROM AAG20000   WHERE SERIES = 6 and   DOCTYPE = 4) AA ON  DOCNUMBR = PYADNMBR  WHERE BACHNUMB = @I_cBACHNUMB  END  OPEN curPostEdits  FETCH NEXT FROM curPostEdits INTO @nHdrID  WHILE @@fetch_status = 0   BEGIN  SET @fValidCode = 1  exec aagValidateCodeSubLedHdr  @I_cTableAssign,  @I_cTableCode,  @I_cTableError,  @nHdrID,  @fValidCode OUTPUT,  @l_cUserID,  1  IF @fValidCode = 0   BEGIN  SET @O_fValidCode = 0  END  FETCH NEXT FROM curPostEdits INTO @nHdrID  END  close curPostEdits  deallocate curPostEdits End    
GO
GRANT EXECUTE ON  [dbo].[aagUPRValidateCodeManualChecks] TO [DYNGRP]
GO
