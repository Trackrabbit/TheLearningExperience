SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4609202SS_2] (@DSCRIPTN char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_WingID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609202 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4609202SS_2] TO [DYNGRP]
GO
