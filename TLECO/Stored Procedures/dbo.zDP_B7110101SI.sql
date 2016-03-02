SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110101SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @SERLNMBR char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7110101 (BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @SERLNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110101SI] TO [DYNGRP]
GO
