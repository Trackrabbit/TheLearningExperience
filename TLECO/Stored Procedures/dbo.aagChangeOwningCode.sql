SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagChangeOwningCode]  @I_nTrxDimID int = 0,  @I_nOldTrxDimCodeID int = 0,  @I_nNewTrxDimCodeID int = 0 as update AAG00406 set aaTrxDimCodeID = @I_nNewTrxDimCodeID   where aaTrxDimID =  @I_nTrxDimID and aaTrxDimCodeID =  @I_nOldTrxDimCodeID  update AAG00406 set aaRelTrxDimCodeID = @I_nNewTrxDimCodeID   where aaRelTrxDimID = @I_nTrxDimID and aaRelTrxDimCodeID = @I_nOldTrxDimCodeID    
GO
GRANT EXECUTE ON  [dbo].[aagChangeOwningCode] TO [DYNGRP]
GO
