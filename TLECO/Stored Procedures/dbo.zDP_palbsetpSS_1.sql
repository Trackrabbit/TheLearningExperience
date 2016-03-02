SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbsetpSS_1] (@IntegerValue smallint) AS  set nocount on SELECT TOP 1  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE IntegerValue = @IntegerValue ORDER BY IntegerValue ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbsetpSS_1] TO [DYNGRP]
GO
