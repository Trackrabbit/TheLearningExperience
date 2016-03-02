SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640071SS_2] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @ACTINDX int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, ACTINDX, BSSI_Sales_Amount, BSSI_InteriorPercent, BSSI_InteriorExpense, BSSI_ExteriorPercent, BSSI_ExteriorExpense, DEX_ROW_ID FROM .B4640071 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, ACTINDX ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640071SS_2] TO [DYNGRP]
GO
