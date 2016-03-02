SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40400SS_1] (@Euro_Currency_ID char(15)) AS  set nocount on SELECT TOP 1  Euro_Currency_ID, DEX_ROW_ID FROM .MC40400 WHERE Euro_Currency_ID = @Euro_Currency_ID ORDER BY Euro_Currency_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40400SS_1] TO [DYNGRP]
GO
