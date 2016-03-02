SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640011L_2] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @STRTDATE_RS datetime, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @STRTDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_CalculationMethod, STRTDATE, BSSI_BPBillFrequency, BSSI_RecoverableChargeID, ADRSCODE, DEX_ROW_ID FROM .B4640011 ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, STRTDATE DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_CalculationMethod, STRTDATE, BSSI_BPBillFrequency, BSSI_RecoverableChargeID, ADRSCODE, DEX_ROW_ID FROM .B4640011 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, STRTDATE DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_CalculationMethod, STRTDATE, BSSI_BPBillFrequency, BSSI_RecoverableChargeID, ADRSCODE, DEX_ROW_ID FROM .B4640011 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, STRTDATE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640011L_2] TO [DYNGRP]
GO