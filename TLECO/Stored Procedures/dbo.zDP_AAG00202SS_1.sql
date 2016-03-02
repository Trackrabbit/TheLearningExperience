SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00202SS_1] (@aaAcctClassID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE aaAcctClassID = @aaAcctClassID AND aaTrxDimID = @aaTrxDimID ORDER BY aaAcctClassID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00202SS_1] TO [DYNGRP]
GO
