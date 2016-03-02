SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901SI] (@BSSI_Process tinyint, @BSSI_PortfolioID char(25), @LOCNCODE char(11), @CUSTNMBR char(15), @VENDORID char(15), @BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @BSSI_Charge_ID char(25), @ACTINDX int, @BSSI_SeperateInvoice tinyint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Sales_Amount numeric(19,5), @BSSI_SOPComment char(25), @BSSI_Description2 char(51), @BSSI_Facility_ID char(67), @LNSEQNBR numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .B4699901 (BSSI_Process, BSSI_PortfolioID, LOCNCODE, CUSTNMBR, VENDORID, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, BSSI_Charge_ID, ACTINDX, BSSI_SeperateInvoice, STRTDATE, ENDDATE, BSSI_Sales_Amount, BSSI_SOPComment, BSSI_Description2, BSSI_Facility_ID, LNSEQNBR) VALUES ( @BSSI_Process, @BSSI_PortfolioID, @LOCNCODE, @CUSTNMBR, @VENDORID, @BSSI_Tenant_Lease_Number, @BSSI_Ground_Lease_Number, @BSSI_Charge_ID, @ACTINDX, @BSSI_SeperateInvoice, @STRTDATE, @ENDDATE, @BSSI_Sales_Amount, @BSSI_SOPComment, @BSSI_Description2, @BSSI_Facility_ID, @LNSEQNBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901SI] TO [DYNGRP]
GO
