SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40004SS_1] (@CAMAccountType smallint) AS  set nocount on SELECT TOP 1  REFRENCE, SOURCDOC, CAMAccountType, BCHCOMNT, BACHNUMB, DEX_ROW_ID FROM .CAM40004 WHERE CAMAccountType = @CAMAccountType ORDER BY CAMAccountType ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40004SS_1] TO [DYNGRP]
GO