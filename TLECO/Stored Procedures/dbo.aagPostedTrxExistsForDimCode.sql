SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE        procedure [dbo].[aagPostedTrxExistsForDimCode] @I_nTrxDimID int = 0, @I_nTrxDimCodeID int = 0, @O_fPostedTrxExists  tinyint = 0 output as if EXISTS (select aaTrxCodeID from AAG30003 where aaTrxCodeID =  @I_nTrxDimCodeID and  aaTrxDimID =  @I_nTrxDimID)  begin  set @O_fPostedTrxExists = 1  return  end else  if EXISTS (select aaTrxDimID from AAG20003 a,AAG20001 b  where a.aaSubLedgerHdrID = b.aaSubLedgerHdrID and  a.aaSubLedgerDistID = b.aaSubLedgerDistID and  b.POSTED = 1 and aaTrxDimID = @I_nTrxDimID and aaTrxCodeID = @I_nTrxDimCodeID)  begin  set @O_fPostedTrxExists = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagPostedTrxExistsForDimCode] TO [DYNGRP]
GO
