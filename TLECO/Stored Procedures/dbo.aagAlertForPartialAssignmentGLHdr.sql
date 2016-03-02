SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE   procedure [dbo].[aagAlertForPartialAssignmentGLHdr] @I_cTableAssign nvarchar(30) = null, @I_cTableCode nvarchar(30) = null, @I_cTableError nvarchar(30) = null, @I_nHdrID int, @O_fValidCode tinyint = 1 output as begin  declare  @nDistID int,  @nDebitAmt numeric(19,5),  @nCreditAmt numeric(19,5),  @nActIndx int,  @nAcctClassID int,  @nErrorCount int,  @fValidCode tinyint  set @fValidCode = 1  set @O_fValidCode = 1  exec ('declare aaGLWorkHdr cursor fast_forward FOR  select aaGLWorkDistID,DEBITAMT,CRDTAMNT,ACTINDX from AAG10001  where aaGLWorkHdrID = str ('+@I_nHdrID + ')' )  open aaGLWorkHdr  fetch next from aaGLWorkHdr into @nDistID,@nDebitAmt,@nCreditAmt,@nActIndx  while @@fetch_status = 0  Begin  Set @fValidCode = 1  If exists(select aaAcctClassID from AAG00200 where ACTINDX = @nActIndx)  select @nAcctClassID = aaAcctClassID from AAG00200 where ACTINDX = @nActIndx  Else  set @nAcctClassID = 0  If @fValidCode = 1   Begin  exec aagAlertForPartialAssignmentGLWorkDist  2,  @I_cTableAssign,   @I_cTableCode,  @I_cTableError,  @I_nHdrID,  @nDistID,  @nDebitAmt,  @nCreditAmt,  @nAcctClassID,  1,  @fValidCode output  If @fValidCode = 0  set @O_fValidCode = 0  End  Fetch next from aaGLWorkHdr into @nDistID,@nDebitAmt,@nCreditAmt, @nActIndx  End  close aaGLWorkHdr  deallocate aaGLWorkHdr  return end    
GO
GRANT EXECUTE ON  [dbo].[aagAlertForPartialAssignmentGLHdr] TO [DYNGRP]
GO
