SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000005SS_1] (@LK_Group char(31), @LK_Link_No int) AS  set nocount on SELECT TOP 1  LK_Group, LK_Link_No, DEX_ROW_ID FROM .LK000005 WHERE LK_Group = @LK_Group AND LK_Link_No = @LK_Link_No ORDER BY LK_Group ASC, LK_Link_No ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000005SS_1] TO [DYNGRP]
GO
