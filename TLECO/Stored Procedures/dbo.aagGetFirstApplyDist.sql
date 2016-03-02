SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagGetFirstApplyDist]  @aaSubLedgerHdrID int,  @TRANTYPE char(1),  @aaSubLedgerDistID int output,  @ACTINDX int output,  @SEQNUMBR int output as begin  if @TRANTYPE = 'P'  begin  select top 1 @aaSubLedgerDistID = aaSubLedgerDistID, @ACTINDX = ACTINDX,@SEQNUMBR = SEQNUMBR  from AAG20001  where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0 and DISTTYPE in (4,11,13) and   aaBrowseType <> 0 and aaWinWasOpen = 0  end  else if @TRANTYPE = 'D'  begin  select top 1 @aaSubLedgerDistID = aaSubLedgerDistID, @ACTINDX = ACTINDX,@SEQNUMBR = SEQNUMBR  from AAG20001  where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0 and DISTTYPE in (2,4,5,6) and   aaBrowseType <> 0 and aaWinWasOpen = 0  end  end    
GO
GRANT EXECUTE ON  [dbo].[aagGetFirstApplyDist] TO [DYNGRP]
GO
