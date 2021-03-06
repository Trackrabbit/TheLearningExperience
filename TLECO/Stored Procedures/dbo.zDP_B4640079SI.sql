SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640079SI] (@BSSI_PortfolioID char(25), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @BSSI_SelectedLeaseNumber char(25), @BSSI_SelectedSiteID char(11), @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNITMSEQ int, @BSSI_ContributionAmount numeric(19,5), @BSSI_OccupancyTypeID char(25), @NAME char(31), @LOCNDSCR char(31), @BSSI_Range_Start datetime, @BSSI_Range_End datetime, @From_Date datetime, @TODATE datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640079 (BSSI_PortfolioID, LNSEQNBR, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionAmount, BSSI_OccupancyTypeID, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, From_Date, TODATE) VALUES ( @BSSI_PortfolioID, @LNSEQNBR, @YEAR1, @BSSI_SelectedLeaseNumber, @BSSI_SelectedSiteID, @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNITMSEQ, @BSSI_ContributionAmount, @BSSI_OccupancyTypeID, @NAME, @LOCNDSCR, @BSSI_Range_Start, @BSSI_Range_End, @From_Date, @TODATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640079SI] TO [DYNGRP]
GO
