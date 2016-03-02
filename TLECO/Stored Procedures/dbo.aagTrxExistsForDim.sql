SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE        procedure [dbo].[aagTrxExistsForDim] @I_nTrxDimID int = 0, @O_fTrxExists  tinyint = 0 output as if EXISTS (select aaTrxDimID from AAG30003 where aaTrxDimID =  @I_nTrxDimID)  begin  set @O_fTrxExists = 1  return  end else  if EXISTS (select aaTrxDimID from AAG20003 a,AAG20001 b  where a.aaSubLedgerHdrID = b.aaSubLedgerHdrID and  a.aaSubLedgerDistID = b.aaSubLedgerDistID  and aaTrxDimID = @I_nTrxDimID)  begin  set @O_fTrxExists = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagTrxExistsForDim] TO [DYNGRP]
GO
