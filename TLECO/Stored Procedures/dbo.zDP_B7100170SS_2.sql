SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100170SS_2] (@VENDORID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MODULE1, VENDORID, DEX_ROW_ID FROM .B7100170 WHERE VENDORID = @VENDORID ORDER BY VENDORID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100170SS_2] TO [DYNGRP]
GO
