SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273508SI] (@MSO_InstanceGUID char(101), @MSO_ResponseGUID char(51), @MSO_SegmentNUM int, @MSO_SegmentString char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273508 (MSO_InstanceGUID, MSO_ResponseGUID, MSO_SegmentNUM, MSO_SegmentString) VALUES ( @MSO_InstanceGUID, @MSO_ResponseGUID, @MSO_SegmentNUM, @MSO_SegmentString) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273508SI] TO [DYNGRP]
GO
