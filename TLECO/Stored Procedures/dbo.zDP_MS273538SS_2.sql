SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273538SS_2] (@DEX_ROW_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType, DEX_ROW_ID FROM .MS273538 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273538SS_2] TO [DYNGRP]
GO
