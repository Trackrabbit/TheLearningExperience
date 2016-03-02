SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901SS_1] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @STRTDATE datetime, @ENDDATE datetime, @LNSEQNBR numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR, DEX_ROW_ID FROM .B4699901 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Ground_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, STRTDATE ASC, ENDDATE ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901SS_1] TO [DYNGRP]
GO
