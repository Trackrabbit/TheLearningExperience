SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MinPONumSS_1] (@PONUMBER char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  PONUMBER, RCPTNMBR, Never_Default_Previous, DEX_ROW_ID FROM .MinPONum WHERE PONUMBER = @PONUMBER ORDER BY PONUMBER ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MinPONumSS_1] TO [DYNGRP]
GO
