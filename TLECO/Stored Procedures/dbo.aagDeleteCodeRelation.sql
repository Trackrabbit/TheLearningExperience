SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagDeleteCodeRelation]  @I_nTrxDimID int = 0,  @I_nOldTrxDimCodeID int = 0  as delete AAG00406 where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nOldTrxDimCodeID delete AAG00406 where aaRelTrxDimID = @I_nTrxDimID  and aaRelTrxDimCodeID = @I_nOldTrxDimCodeID    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteCodeRelation] TO [DYNGRP]
GO
