CREATE TABLE [dbo].[BS466008]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MeterNumber] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Include] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466008] ADD CONSTRAINT [PKBS466008] PRIMARY KEY CLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [BSSI_MeterNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466008].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466008].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466008].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466008].[BSSI_MeterNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466008].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466008].[BSSI_Include]'
GO
GRANT SELECT ON  [dbo].[BS466008] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466008] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466008] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466008] TO [DYNGRP]
GO
