SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42400SS_1] (@Physical_Location_Index int) AS  set nocount on SELECT TOP 1  Physical_Location_Index, Physical_Location_ID, Physical_Location_Desc, LOCATNID, Last_Inventory_Date, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA42400 WHERE Physical_Location_Index = @Physical_Location_Index ORDER BY Physical_Location_Index ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42400SS_1] TO [DYNGRP]
GO
