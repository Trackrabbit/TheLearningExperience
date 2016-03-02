SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagUPR_RemovePostingEdits] @I_cUserID varchar(20), @I_PYRNTYPE smallint AS BEGIN  declare @nErrorExist smallint  select @nErrorExist = 0 begin transaction  Delete from AAG20003 where exists   (select 1 from AAG20000 hdr   where hdr.aaSubLedgerHdrID = AAG20003.aaSubLedgerHdrID AND  hdr.SERIES = 6 and  hdr.DOCTYPE = 2 and   hdr.DOCNUMBR = @I_cUserID and   hdr.PYRNTYPE = @I_PYRNTYPE)  If @@error <> 0   begin  goto errBLK  end    Delete from AAG20002 where exists   (select 1 from AAG20000 hdr   where hdr.aaSubLedgerHdrID = AAG20002.aaSubLedgerHdrID AND  hdr.SERIES = 6 and  hdr.DOCTYPE = 2 and   hdr.DOCNUMBR = @I_cUserID and   hdr.PYRNTYPE = @I_PYRNTYPE)  If @@error <> 0   begin  goto errBLK  end    Delete from AAG20001 where exists   (select 1 from AAG20000 hdr   where hdr.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID AND  hdr.SERIES = 6 and  hdr.DOCTYPE = 2 and   hdr.DOCNUMBR = @I_cUserID and   hdr.PYRNTYPE = @I_PYRNTYPE)  If @@error <> 0   begin  goto errBLK  end    Delete from AAG20000   where SERIES = 6 and  DOCTYPE = 2 and   DOCNUMBR = @I_cUserID and   PYRNTYPE = @I_PYRNTYPE  If @@error <> 0   begin  goto errBLK  end    commit tran  Return   errBLK:  ROLLBACK TRANSACTION   Return @@error END    
GO
GRANT EXECUTE ON  [dbo].[aagUPR_RemovePostingEdits] TO [DYNGRP]
GO
