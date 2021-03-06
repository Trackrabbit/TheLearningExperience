SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273538F_1] (@MSO_InstanceGUID_RS char(101), @NDS_NodeName_RS char(101), @MSO_InstanceGUID_RE char(101), @NDS_NodeName_RE char(101)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_InstanceGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType, DEX_ROW_ID FROM .MS273538 ORDER BY MSO_InstanceGUID ASC, NDS_NodeName ASC, DEX_ROW_ID ASC END ELSE IF @MSO_InstanceGUID_RS = @MSO_InstanceGUID_RE BEGIN SELECT TOP 25  MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType, DEX_ROW_ID FROM .MS273538 WHERE MSO_InstanceGUID = @MSO_InstanceGUID_RS AND NDS_NodeName BETWEEN @NDS_NodeName_RS AND @NDS_NodeName_RE ORDER BY MSO_InstanceGUID ASC, NDS_NodeName ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MSO_InstanceGUID, NDS_NodeName, NDS_NodeValue, MSO_TrxType, DEX_ROW_ID FROM .MS273538 WHERE MSO_InstanceGUID BETWEEN @MSO_InstanceGUID_RS AND @MSO_InstanceGUID_RE AND NDS_NodeName BETWEEN @NDS_NodeName_RS AND @NDS_NodeName_RE ORDER BY MSO_InstanceGUID ASC, NDS_NodeName ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273538F_1] TO [DYNGRP]
GO
