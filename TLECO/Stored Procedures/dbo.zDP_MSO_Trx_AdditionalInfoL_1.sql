SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_Trx_AdditionalInfoL_1] (@MSO_InstanceGUID_RS char(101), @MSO_InstanceGUID_RE char(101)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_InstanceGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_InstanceGUID, DEX_ROW_ID, MSO_XMLText FROM .MSO_Trx_AdditionalInfo ORDER BY MSO_InstanceGUID DESC END ELSE IF @MSO_InstanceGUID_RS = @MSO_InstanceGUID_RE BEGIN SELECT TOP 25  MSO_InstanceGUID, DEX_ROW_ID, MSO_XMLText FROM .MSO_Trx_AdditionalInfo WHERE MSO_InstanceGUID = @MSO_InstanceGUID_RS ORDER BY MSO_InstanceGUID DESC END ELSE BEGIN SELECT TOP 25  MSO_InstanceGUID, DEX_ROW_ID, MSO_XMLText FROM .MSO_Trx_AdditionalInfo WHERE MSO_InstanceGUID BETWEEN @MSO_InstanceGUID_RS AND @MSO_InstanceGUID_RE ORDER BY MSO_InstanceGUID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_Trx_AdditionalInfoL_1] TO [DYNGRP]
GO
