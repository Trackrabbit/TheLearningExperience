SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640054SS_2] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LNSEQNBR, LOCNDSCR, STRTDATE, ENDDATE, BSSI_OccupancyFactor, BSSI_Leased_Space_SF, BSSI_WeighedOccupiedArea, BSSI_DaysOccupied, BSSI_NonPtcbCtrbAmtExt, BSSI_NonPtcbCtrbAmtInt, BSSI_Calculated, BSSI_Calculated1, BSSI_Dummy, DEX_ROW_ID FROM .B4640054 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LOCNCODE = @LOCNCODE ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LOCNCODE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640054SS_2] TO [DYNGRP]
GO
