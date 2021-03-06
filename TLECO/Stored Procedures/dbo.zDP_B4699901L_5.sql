SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901L_5] (@LNSEQNBR_RS numeric(19,5), @LNSEQNBR_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @LNSEQNBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 ORDER BY LNSEQNBR DESC END ELSE IF @LNSEQNBR_RS = @LNSEQNBR_RE BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE LNSEQNBR = @LNSEQNBR_RS ORDER BY LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901L_5] TO [DYNGRP]
GO
