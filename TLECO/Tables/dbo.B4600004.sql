CREATE TABLE [dbo].[B4600004]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OccurrenceLeniency] [smallint] NOT NULL,
[BSSI_MaxAllowedOccr] [smallint] NOT NULL,
[BSSI_GracePeriod] [smallint] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SendReminder] [tinyint] NOT NULL,
[BSSI_ApplyLateCharge] [tinyint] NOT NULL,
[BSSI_LateChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_NoOfLateOccur] [smallint] NOT NULL,
[BSSI_AuditGracePeriod] [smallint] NOT NULL,
[BSSIAuditNoOfLateReport] [smallint] NOT NULL,
[BSSI_AuditOccurrenceLeni] [smallint] NOT NULL,
[BSSI_AuditSendReminder] [tinyint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600004] ADD CONSTRAINT [PKB4600004] PRIMARY KEY CLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600004].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600004].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_OccurrenceLeniency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_MaxAllowedOccr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_GracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600004].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_SendReminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_ApplyLateCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4600004].[BSSI_LateChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_NoOfLateOccur]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_AuditGracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSIAuditNoOfLateReport]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_AuditOccurrenceLeni]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[BSSI_AuditSendReminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600004].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B4600004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600004] TO [DYNGRP]
GO
