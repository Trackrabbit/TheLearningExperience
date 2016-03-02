SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273538SI] (@MSO_InstanceGUID char(101), @NDS_NodeName char(101), @NDS_NodeValue char(255), @MSO_TrxType int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273538 (MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType) VALUES ( @MSO_InstanceGUID, @NDS_NodeName, @NDS_NodeValue, @MSO_TrxType) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273538SI] TO [DYNGRP]
GO
