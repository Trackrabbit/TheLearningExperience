SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000002SS_2] (@LK_Link_Date datetime, @LK_Link_No int) AS  set nocount on SELECT TOP 1  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE LK_Link_Date = @LK_Link_Date AND LK_Link_No = @LK_Link_No ORDER BY LK_Link_Date ASC, LK_Link_No ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000002SS_2] TO [DYNGRP]
GO
