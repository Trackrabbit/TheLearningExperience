SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagRemoveDefCodeFromAccClass] @I_nTrxDimID int = 0, @I_nTrxCodeID int = 0, @O_fSuccess tinyint = 0 output as begin update AAG00202 set aaTrxDimCodeIDDflt = 0,aaShow = 1 where (aaTrxDimID = @I_nTrxDimID and  aaTrxDimCodeIDDflt = @I_nTrxCodeID and (aaDataEntry = 2 or aaDataEntry = 3)) end    
GO
GRANT EXECUTE ON  [dbo].[aagRemoveDefCodeFromAccClass] TO [DYNGRP]
GO
