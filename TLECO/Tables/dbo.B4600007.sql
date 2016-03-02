CREATE TABLE [dbo].[B4600007]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[BSSI_SeperatePeriod] [tinyint] NOT NULL,
[BSSI_ProrationOption] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600007] ADD CONSTRAINT [PKB4600007] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600007].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600007].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600007].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600007].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600007].[BSSI_SeperatePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600007].[BSSI_ProrationOption]'
GO
GRANT SELECT ON  [dbo].[B4600007] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600007] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600007] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600007] TO [DYNGRP]
GO
