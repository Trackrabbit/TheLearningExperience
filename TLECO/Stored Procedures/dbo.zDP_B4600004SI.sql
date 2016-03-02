SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600004SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_OccurrenceLeniency smallint, @BSSI_MaxAllowedOccr smallint, @BSSI_GracePeriod smallint, @BSSI_Charge_ID char(25), @BSSI_SendReminder tinyint, @BSSI_ApplyLateCharge tinyint, @BSSI_LateChargeAmt numeric(19,5), @BSSI_NoOfLateOccur smallint, @BSSI_AuditGracePeriod smallint, @BSSIAuditNoOfLateReport smallint, @BSSI_AuditOccurrenceLeni smallint, @BSSI_AuditSendReminder tinyint, @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600004 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_OccurrenceLeniency, BSSI_MaxAllowedOccr, BSSI_GracePeriod, BSSI_Charge_ID, BSSI_SendReminder, BSSI_ApplyLateCharge, BSSI_LateChargeAmt, BSSI_NoOfLateOccur, BSSI_AuditGracePeriod, BSSIAuditNoOfLateReport, BSSI_AuditOccurrenceLeni, BSSI_AuditSendReminder, DUMYRCRD) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_OccurrenceLeniency, @BSSI_MaxAllowedOccr, @BSSI_GracePeriod, @BSSI_Charge_ID, @BSSI_SendReminder, @BSSI_ApplyLateCharge, @BSSI_LateChargeAmt, @BSSI_NoOfLateOccur, @BSSI_AuditGracePeriod, @BSSIAuditNoOfLateReport, @BSSI_AuditOccurrenceLeni, @BSSI_AuditSendReminder, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600004SI] TO [DYNGRP]
GO
