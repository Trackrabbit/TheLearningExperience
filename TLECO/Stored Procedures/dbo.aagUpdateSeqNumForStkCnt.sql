SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagUpdateSeqNumForStkCnt]   @iDocumentNumber varchar(30)=''  as  declare @SeqNum int,  @HdrID int,  @ActualSeqNum int if @iDocumentNumber = ''  Return Select @HdrID = aaSubLedgerHdrID from AAG20000 where DOCNUMBR = @iDocumentNumber and DOCTYPE = 2 if @HdrID = NULL or @HdrID = 0  Return  Declare aaCursor cursor fast_forward FOR  Select LNSEQNBR from IV10001 where IVDOCNBR = @iDocumentNumber and IVDOCTYP = 2 Order by LNSEQNBR  Open aaCursor Fetch next from aaCursor into @ActualSeqNum  set @SeqNum = 1 While @@fetch_status = 0  Begin  If exists(select top 1 aaSubLedgerHdrID from AAG20001 Where aaSubLedgerHdrID = @HdrID and SEQNUMBR = @SeqNum)  Begin  Update AAG20001 set SEQNUMBR = @ActualSeqNum Where aaSubLedgerHdrID = @HdrID and SEQNUMBR = @SeqNum  Fetch next from aaCursor into @ActualSeqNum  End  set @SeqNum = @SeqNum + 1  if @SeqNum > 100000 Break  End  Close aaCursor Deallocate aaCursor    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateSeqNumForStkCnt] TO [DYNGRP]
GO
