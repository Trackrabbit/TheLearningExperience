SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200SS_1] (@ACTINDX int) AS  set nocount on SELECT TOP 1  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200SS_1] TO [DYNGRP]
GO