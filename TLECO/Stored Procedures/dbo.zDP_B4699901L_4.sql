SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901L_4] (@BSSI_PortfolioID_RS char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Ground_Lease_Number_RS char(25), @LNSEQNBR_RS numeric(19,5), @BSSI_PortfolioID_RE char(25), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Ground_Lease_Number_RE char(25), @LNSEQNBR_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 ORDER BY BSSI_PortfolioID DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Ground_Lease_Number DESC, LNSEQNBR ASC, DEX_ROW_ID DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RE AND @LNSEQNBR_RS ORDER BY BSSI_PortfolioID DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Ground_Lease_Number DESC, LNSEQNBR ASC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RE AND @LNSEQNBR_RS ORDER BY BSSI_PortfolioID DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Ground_Lease_Number DESC, LNSEQNBR ASC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901L_4] TO [DYNGRP]
GO