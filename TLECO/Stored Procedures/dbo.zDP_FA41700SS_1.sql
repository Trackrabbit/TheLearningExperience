SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41700SS_1] (@RETIREEVENT int) AS  set nocount on SELECT TOP 1  RETIREEVENT, EVENTDSC, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41700 WHERE RETIREEVENT = @RETIREEVENT ORDER BY RETIREEVENT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41700SS_1] TO [DYNGRP]
GO
