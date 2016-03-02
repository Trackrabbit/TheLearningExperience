SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100190SI] (@SALSTERR char(15), @BSSI_Segment_Value char(67), @BSSI_Location_Segment char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100190 (SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment) VALUES ( @SALSTERR, @BSSI_Segment_Value, @BSSI_Location_Segment) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100190SI] TO [DYNGRP]
GO
