SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273538SS_1] (@MSO_InstanceGUID char(101), @NDS_NodeName char(101)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType, DEX_ROW_ID FROM .MS273538 WHERE MSO_InstanceGUID = @MSO_InstanceGUID AND NDS_NodeName = @NDS_NodeName ORDER BY MSO_InstanceGUID ASC, NDS_NodeName ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273538SS_1] TO [DYNGRP]
GO
