SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04001SI] (@aaFASetupID int, @ListID smallint, @aaTrxDimID int, @aaTrxDimCodeID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG04001 (aaFASetupID, ListID, aaTrxDimID, aaTrxDimCodeID) VALUES ( @aaFASetupID, @ListID, @aaTrxDimID, @aaTrxDimCodeID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04001SI] TO [DYNGRP]
GO
