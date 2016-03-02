SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640022SS_1] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Description2, BSSI_Facility_ID, BSSI_Charge_ID, BSSI_Description, YEAR1, BSSI_BuildingExpenses, BSSI_BuilldingArea, BSSI_LeasedMallArea, BSSI_ExteriorLeaseArea, BSSI_ExteriorLeasedArea, BSSI_InteriorLeaseArea, BSSI_InteriorLeasedArea, BSSI_InteriorExpense, BSSI_ExteriorExpense, DEX_ROW_ID FROM .B4640022 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640022SS_1] TO [DYNGRP]
GO
