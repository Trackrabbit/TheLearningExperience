SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA1099SS_1] (@VENDORID char(15), @APTVCHNM char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  VENDORID, APTVCHNM, APPLDAMT, DEX_ROW_ID FROM .TA1099 WHERE VENDORID = @VENDORID AND APTVCHNM = @APTVCHNM ORDER BY VENDORID ASC, APTVCHNM ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA1099SS_1] TO [DYNGRP]
GO
