SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640048SI] (@LOCNCODE char(11), @BSSI_Meter_Number char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640048 (LOCNCODE, BSSI_Meter_Number) VALUES ( @LOCNCODE, @BSSI_Meter_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640048SI] TO [DYNGRP]
GO
