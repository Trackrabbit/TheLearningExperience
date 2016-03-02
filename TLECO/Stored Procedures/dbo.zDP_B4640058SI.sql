SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640058SI] (@BSSI_PortfolioID char(25), @YEAR1 smallint, @BSSI_SelectedLeaseNumber char(25), @BSSI_SelectedSiteID char(11), @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNITMSEQ int, @BSSI_ContributionArea numeric(19,5), @BSSI_OccupancyTypeID char(25), @BSSI_DaysOccupied smallint, @BSSI_DaysInYear numeric(19,5), @BSSI_Factor numeric(19,5), @NAME char(31), @LOCNDSCR char(31), @BSSI_Range_Start datetime, @BSSI_Range_End datetime, @STRTDATE datetime, @ENDDATE datetime, @BSSI_WeighedOccupiedArea numeric(19,5), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640058 (BSSI_PortfolioID, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionArea, BSSI_OccupancyTypeID, BSSI_DaysOccupied, BSSI_DaysInYear, BSSI_Factor, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, STRTDATE, ENDDATE, BSSI_WeighedOccupiedArea, BSSI_Dummy) VALUES ( @BSSI_PortfolioID, @YEAR1, @BSSI_SelectedLeaseNumber, @BSSI_SelectedSiteID, @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNITMSEQ, @BSSI_ContributionArea, @BSSI_OccupancyTypeID, @BSSI_DaysOccupied, @BSSI_DaysInYear, @BSSI_Factor, @NAME, @LOCNDSCR, @BSSI_Range_Start, @BSSI_Range_End, @STRTDATE, @ENDDATE, @BSSI_WeighedOccupiedArea, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640058SI] TO [DYNGRP]
GO
