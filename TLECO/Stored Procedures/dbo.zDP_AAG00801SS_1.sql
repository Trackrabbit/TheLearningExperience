SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00801SS_1] (@aaAliasID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaAliasID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG00801 WHERE aaAliasID = @aaAliasID AND aaTrxDimID = @aaTrxDimID ORDER BY aaAliasID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00801SS_1] TO [DYNGRP]
GO
