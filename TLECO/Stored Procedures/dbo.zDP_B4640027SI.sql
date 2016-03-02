SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640027SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @BSSI_CalculationMethod smallint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_BreakPointPercent numeric(19,5), @BSSI_BreakPointAmt numeric(19,5), @BSSI_BreakpointInPeriod numeric(19,5), @BSSI_DaysInYear numeric(19,5), @BSSI_DaysInPeriod numeric(19,5), @BSSI_Factor numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640027 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, LNITMSEQ, BSSI_CalculationMethod, STRTDATE, ENDDATE, BSSI_BreakPointPercent, BSSI_BreakPointAmt, BSSI_BreakpointInPeriod, BSSI_DaysInYear, BSSI_DaysInPeriod, BSSI_Factor, BSSI_Sales_Amount) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @LNITMSEQ, @BSSI_CalculationMethod, @STRTDATE, @ENDDATE, @BSSI_BreakPointPercent, @BSSI_BreakPointAmt, @BSSI_BreakpointInPeriod, @BSSI_DaysInYear, @BSSI_DaysInPeriod, @BSSI_Factor, @BSSI_Sales_Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640027SI] TO [DYNGRP]
GO
