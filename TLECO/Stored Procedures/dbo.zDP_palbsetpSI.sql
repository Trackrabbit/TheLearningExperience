SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbsetpSI] (@IntegerValue smallint, @AutoOpenSalesDocWindow tinyint, @AutoApplyInv tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .palbsetp (IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv) VALUES ( @IntegerValue, @AutoOpenSalesDocWindow, @AutoApplyInv) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbsetpSI] TO [DYNGRP]
GO
