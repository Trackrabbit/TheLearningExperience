SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640015SS_4] (@DSCRIPTN char(31)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy, DEX_ROW_ID FROM .B4640015 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640015SS_4] TO [DYNGRP]
GO
