SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640006SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Term char(25), @PERIODID smallint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_CalculationMethod smallint, @BSSI_Sales_Amount numeric(19,5), @BSSI_NaturalBreakPnt numeric(19,5), @BSSI_LicenseFeePerct numeric(19,5), @BSSI_Billing_Frequency smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640006 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_Term, PERIODID, STRTDATE, ENDDATE, BSSI_CalculationMethod, BSSI_Sales_Amount, BSSI_NaturalBreakPnt, BSSI_LicenseFeePerct, BSSI_Billing_Frequency) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_Term, @PERIODID, @STRTDATE, @ENDDATE, @BSSI_CalculationMethod, @BSSI_Sales_Amount, @BSSI_NaturalBreakPnt, @BSSI_LicenseFeePerct, @BSSI_Billing_Frequency) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640006SI] TO [DYNGRP]
GO
