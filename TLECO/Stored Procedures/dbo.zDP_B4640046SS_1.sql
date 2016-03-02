SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640046SS_1] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Range_Start datetime, @BSSI_Range_End datetime, @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionArea, BSSI_OccupancyTypeID, BSSI_DaysOccupied, BSSI_DaysInYear, BSSI_Factor, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, STRTDATE, ENDDATE, BSSI_WeighedOccupiedArea, BSSI_Dummy, DEX_ROW_ID FROM .B4640046 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Range_Start = @BSSI_Range_Start AND BSSI_Range_End = @BSSI_Range_End AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Range_Start ASC, BSSI_Range_End ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640046SS_1] TO [DYNGRP]
GO
