SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41102SS_2] (@Landed_Cost_ID char(15), @Landed_Cost_Group_ID char(15)) AS  set nocount on SELECT TOP 1  Landed_Cost_Group_ID, Landed_Cost_ID, DEX_ROW_ID FROM .IV41102 WHERE Landed_Cost_ID = @Landed_Cost_ID AND Landed_Cost_Group_ID = @Landed_Cost_Group_ID ORDER BY Landed_Cost_ID ASC, Landed_Cost_Group_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41102SS_2] TO [DYNGRP]
GO