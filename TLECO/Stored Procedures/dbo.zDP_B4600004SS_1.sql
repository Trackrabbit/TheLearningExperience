SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600004SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_OccurrenceLeniency, BSSI_MaxAllowedOccr, BSSI_GracePeriod, BSSI_Charge_ID, BSSI_SendReminder, BSSI_ApplyLateCharge, BSSI_LateChargeAmt, BSSI_NoOfLateOccur, BSSI_AuditGracePeriod, BSSIAuditNoOfLateReport, BSSI_AuditOccurrenceLeni, BSSI_AuditSendReminder, DUMYRCRD, DEX_ROW_ID FROM .B4600004 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600004SS_1] TO [DYNGRP]
GO
