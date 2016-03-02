SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04001SS_1] (@aaFASetupID int, @ListID smallint, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaFASetupID, ListID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG04001 WHERE aaFASetupID = @aaFASetupID AND ListID = @ListID AND aaTrxDimID = @aaTrxDimID ORDER BY aaFASetupID ASC, ListID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04001SS_1] TO [DYNGRP]
GO
