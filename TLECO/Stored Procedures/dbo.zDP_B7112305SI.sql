SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112305SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @BSSI_Adjustment_Amount numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7112305 (BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Adjustment_Amount) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @BSSI_Adjustment_Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112305SI] TO [DYNGRP]
GO
