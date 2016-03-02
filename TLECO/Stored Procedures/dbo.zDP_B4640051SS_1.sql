SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640051SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Scroll_LineSequence numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_Scroll_LineSequence, STRTDATE, ENDDATE, BSSI_LicenseFeeAmt, BSSI_LicenseFeePerct, BSSI_BreakPointAmt, BSSI_LicenseFeeFactor, BSSI_BPBillFrequency, BSSI_RecoverableChargeID, DEX_ROW_ID FROM .B4640051 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND LNSEQNBR = @LNSEQNBR AND BSSI_Scroll_LineSequence = @BSSI_Scroll_LineSequence ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, LNSEQNBR ASC, BSSI_Scroll_LineSequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640051SS_1] TO [DYNGRP]
GO
