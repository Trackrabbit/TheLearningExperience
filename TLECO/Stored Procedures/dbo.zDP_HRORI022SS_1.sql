SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRORI022SS_1] (@ORSETUPCODE_I char(31)) AS  set nocount on SELECT TOP 1  ORSETUPCODE_I, ORSETUPNAME_I, DEX_ROW_ID FROM .HRORI022 WHERE ORSETUPCODE_I = @ORSETUPCODE_I ORDER BY ORSETUPCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRORI022SS_1] TO [DYNGRP]
GO
