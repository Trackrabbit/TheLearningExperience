SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901SS_4] (@BSSI_PortfolioID char(25), @BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @LNSEQNBR numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_PortfolioID ASC, BSSI_Tenant_Lease_Number ASC, BSSI_Ground_Lease_Number ASC, LNSEQNBR DESC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901SS_4] TO [DYNGRP]
GO
