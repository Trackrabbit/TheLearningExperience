SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagTrxDimCodeRelationOwning]  @I_nTrxDimID int = 0,  @I_nTrxDimCodeID int = 0,  @I_nRelTrxDimID int = 0  as  declare  @I_nRelTrxDimCodeID int  select @I_nRelTrxDimCodeID = aaRelTrxDimCodeID from AAG00406   where (aaTrxDimID =  @I_nTrxDimID and   aaTrxDimCodeID = @I_nTrxDimCodeID and   aaRelTrxDimID = @I_nRelTrxDimID)   delete AAG00406 where (aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDimCodeID and aaRelTrxDimID =  @I_nRelTrxDimID and aaRelTrxDimCodeID = @I_nRelTrxDimCodeID) delete AAG00406 where (aaTrxDimID = @I_nRelTrxDimID and aaTrxDimCodeID = @I_nRelTrxDimCodeID and aaRelTrxDimID = @I_nTrxDimID and aaRelTrxDimCodeID = @I_nTrxDimCodeID)    
GO
GRANT EXECUTE ON  [dbo].[aagTrxDimCodeRelationOwning] TO [DYNGRP]
GO
