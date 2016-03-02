SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000101SS_2] (@Status smallint, @LK_Link_No int) AS  set nocount on SELECT TOP 1  LK_Link_No, Status, USERID, NOTEINDX, DEX_ROW_ID FROM .LK000101 WHERE Status = @Status AND LK_Link_No = @LK_Link_No ORDER BY Status ASC, LK_Link_No ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000101SS_2] TO [DYNGRP]
GO
