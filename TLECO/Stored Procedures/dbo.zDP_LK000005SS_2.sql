SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000005SS_2] (@LK_Link_No int, @LK_Group char(31)) AS  set nocount on SELECT TOP 1  LK_Group, LK_Link_No, DEX_ROW_ID FROM .LK000005 WHERE LK_Link_No = @LK_Link_No AND LK_Group = @LK_Group ORDER BY LK_Link_No ASC, LK_Group ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000005SS_2] TO [DYNGRP]
GO
