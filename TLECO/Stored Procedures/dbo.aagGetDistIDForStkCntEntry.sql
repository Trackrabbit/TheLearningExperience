SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetDistIDForStkCntEntry]  @iHdrID int = 0, @iItemNumber varchar(30) = '', @iSiteID varchar(10) = '', @iBinNumber varchar(15) = '', @iOffsetAcct tinyint = 0, @oDistIDofAcct int = 0 out  as  if @iHdrID = 0 or @iItemNumber = '' or @iSiteID = ''  return  select @oDistIDofAcct = aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and ITEMNMBR = @iItemNumber and   TRXLOCTN = @iSiteID and BINNMBR = @iBinNumber and aaOffsetAcct = @iOffsetAcct    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistIDForStkCntEntry] TO [DYNGRP]
GO
