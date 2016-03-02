SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273537SS_2] (@MSO_EngineGUID char(51)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE MSO_EngineGUID = @MSO_EngineGUID ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273537SS_2] TO [DYNGRP]
GO
