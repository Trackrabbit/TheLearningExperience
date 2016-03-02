SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640015SS_3] (@BSSI_PortfolioID char(25), @BSSI_Template_ID char(25)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy, DEX_ROW_ID FROM .B4640015 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Template_ID = @BSSI_Template_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Template_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640015SS_3] TO [DYNGRP]
GO
