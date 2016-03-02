SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41101SS_1] (@Landed_Cost_Group_ID char(15)) AS  set nocount on SELECT TOP 1  Landed_Cost_Group_ID, Long_Description, NOTEINDX, DEX_ROW_ID FROM .IV41101 WHERE Landed_Cost_Group_ID = @Landed_Cost_Group_ID ORDER BY Landed_Cost_Group_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41101SS_1] TO [DYNGRP]
GO
