SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640044L_1] (@BSSI_PortfolioID_RS char(25), @YEAR1_RS smallint, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @BSSI_Range_Start_RS datetime, @BSSI_Range_End_RS datetime, @LNITMSEQ_RS int, @BSSI_PortfolioID_RE char(25), @YEAR1_RE smallint, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @BSSI_Range_Start_RE datetime, @BSSI_Range_End_RE datetime, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionAmount, BSSI_OccupancyTypeID, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, From_Date, TODATE, DEX_ROW_ID FROM .B4640044 ORDER BY BSSI_PortfolioID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, BSSI_Range_Start DESC, BSSI_Range_End DESC, LNITMSEQ DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionAmount, BSSI_OccupancyTypeID, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, From_Date, TODATE, DEX_ROW_ID FROM .B4640044 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_Range_Start BETWEEN @BSSI_Range_Start_RS AND @BSSI_Range_Start_RE AND BSSI_Range_End BETWEEN @BSSI_Range_End_RS AND @BSSI_Range_End_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_PortfolioID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, BSSI_Range_Start DESC, BSSI_Range_End DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, YEAR1, BSSI_SelectedLeaseNumber, BSSI_SelectedSiteID, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_ContributionAmount, BSSI_OccupancyTypeID, NAME, LOCNDSCR, BSSI_Range_Start, BSSI_Range_End, From_Date, TODATE, DEX_ROW_ID FROM .B4640044 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_Range_Start BETWEEN @BSSI_Range_Start_RS AND @BSSI_Range_Start_RE AND BSSI_Range_End BETWEEN @BSSI_Range_End_RS AND @BSSI_Range_End_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_PortfolioID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, BSSI_Range_Start DESC, BSSI_Range_End DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640044L_1] TO [DYNGRP]
GO
