SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640054L_1] (@BSSI_PortfolioID_RS char(25), @BSSI_Charge_ID_RS char(25), @YEAR1_RS smallint, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNSEQNBR_RS numeric(19,5), @BSSI_PortfolioID_RE char(25), @BSSI_Charge_ID_RE char(25), @YEAR1_RE smallint, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LNSEQNBR, LOCNDSCR, STRTDATE, ENDDATE, BSSI_OccupancyFactor, BSSI_Leased_Space_SF, BSSI_WeighedOccupiedArea, BSSI_DaysOccupied, BSSI_NonPtcbCtrbAmtExt, BSSI_NonPtcbCtrbAmtInt, BSSI_Calculated, BSSI_Calculated1, BSSI_Dummy, DEX_ROW_ID FROM .B4640054 ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNSEQNBR DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LNSEQNBR, LOCNDSCR, STRTDATE, ENDDATE, BSSI_OccupancyFactor, BSSI_Leased_Space_SF, BSSI_WeighedOccupiedArea, BSSI_DaysOccupied, BSSI_NonPtcbCtrbAmtExt, BSSI_NonPtcbCtrbAmtInt, BSSI_Calculated, BSSI_Calculated1, BSSI_Dummy, DEX_ROW_ID FROM .B4640054 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LNSEQNBR, LOCNDSCR, STRTDATE, ENDDATE, BSSI_OccupancyFactor, BSSI_Leased_Space_SF, BSSI_WeighedOccupiedArea, BSSI_DaysOccupied, BSSI_NonPtcbCtrbAmtExt, BSSI_NonPtcbCtrbAmtInt, BSSI_Calculated, BSSI_Calculated1, BSSI_Dummy, DEX_ROW_ID FROM .B4640054 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640054L_1] TO [DYNGRP]
GO
