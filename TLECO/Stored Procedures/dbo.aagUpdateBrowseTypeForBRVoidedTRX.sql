SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagUpdateBrowseTypeForBRVoidedTRX] @aaSubLedgerHdrID int, @GLPOSTDT datetime, @aaLastDistID int output as begin   declare @aaBrowseType int  select  @aaBrowseType = 0   Select @aaLastDistID = count(*)   from AAG20001   where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID > 0 and   POSTED = 1   Update AAG20001 set aaBrowseType = aaFutureDist   where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID > 0 and   POSTED = 0 and   aaFutureDist <> 0    Update AAG20001  set POSTED = 1, GLPOSTDT = @GLPOSTDT , aaFutureDist  = 0  where  aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID > @aaLastDistID and   POSTED = 0  end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateBrowseTypeForBRVoidedTRX] TO [DYNGRP]
GO
