CREATE TABLE [dbo].[B4640072]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rate] [numeric] (19, 5) NOT NULL,
[BSSI_BPBillFrequency] [smallint] NOT NULL,
[BSSI_RecoverableChargeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640072] ADD CONSTRAINT [PKB4640072] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640072].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640072].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640072].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640072].[BSSI_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640072].[BSSI_BPBillFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640072].[BSSI_RecoverableChargeID]'
GO
GRANT SELECT ON  [dbo].[B4640072] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640072] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640072] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640072] TO [DYNGRP]
GO
