SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpAppEnbSS_1] (@MODULEID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MODULEID, ACTIVE, DEX_ROW_ID FROM .gpAppEnb WHERE MODULEID = @MODULEID ORDER BY MODULEID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpAppEnbSS_1] TO [DYNGRP]
GO