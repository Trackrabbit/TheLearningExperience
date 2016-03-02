SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273508F_1] (@MSO_InstanceGUID_RS char(101), @MSO_SegmentNUM_RS int, @MSO_InstanceGUID_RE char(101), @MSO_SegmentNUM_RE int) AS /* 12.00.0311.000 */ set nocount on IF @MSO_InstanceGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_ResponseGUID, MSO_SegmentNUM, MSO_SegmentString, DEX_ROW_ID FROM .MS273508 ORDER BY MSO_InstanceGUID ASC, MSO_SegmentNUM ASC END ELSE IF @MSO_InstanceGUID_RS = @MSO_InstanceGUID_RE BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_ResponseGUID, MSO_SegmentNUM, MSO_SegmentString, DEX_ROW_ID FROM .MS273508 WHERE MSO_InstanceGUID = @MSO_InstanceGUID_RS AND MSO_SegmentNUM BETWEEN @MSO_SegmentNUM_RS AND @MSO_SegmentNUM_RE ORDER BY MSO_InstanceGUID ASC, MSO_SegmentNUM ASC END ELSE BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_ResponseGUID, MSO_SegmentNUM, MSO_SegmentString, DEX_ROW_ID FROM .MS273508 WHERE MSO_InstanceGUID BETWEEN @MSO_InstanceGUID_RS AND @MSO_InstanceGUID_RE AND MSO_SegmentNUM BETWEEN @MSO_SegmentNUM_RS AND @MSO_SegmentNUM_RE ORDER BY MSO_InstanceGUID ASC, MSO_SegmentNUM ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273508F_1] TO [DYNGRP]
GO