SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200SS_2] (@aaAcctClassID int) AS  set nocount on SELECT TOP 1  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE aaAcctClassID = @aaAcctClassID ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200SS_2] TO [DYNGRP]
GO
