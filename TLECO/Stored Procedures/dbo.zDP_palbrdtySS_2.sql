SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbrdtySS_2] (@IntegerValue smallint) AS  set nocount on SELECT TOP 1  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE IntegerValue = @IntegerValue ORDER BY IntegerValue ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbrdtySS_2] TO [DYNGRP]
GO
