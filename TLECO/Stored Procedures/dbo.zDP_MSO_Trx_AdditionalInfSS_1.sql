SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_Trx_AdditionalInfSS_1] (@MSO_InstanceGUID char(101)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_InstanceGUID, DEX_ROW_ID, MSO_XMLText FROM .MSO_Trx_AdditionalInfo WHERE MSO_InstanceGUID = @MSO_InstanceGUID ORDER BY MSO_InstanceGUID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_Trx_AdditionalInfSS_1] TO [DYNGRP]
GO
