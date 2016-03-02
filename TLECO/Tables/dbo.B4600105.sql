CREATE TABLE [dbo].[B4600105]
(
[BSSI_TenantTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_NextNu] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600105] ADD CONSTRAINT [PKB4600105] PRIMARY KEY CLUSTERED  ([BSSI_TenantTypeID], [BSSI_Tenant_Lease_Prefix]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600105] ON [dbo].[B4600105] ([BSSI_Tenant_Lease_Prefix], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600105].[BSSI_TenantTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600105].[BSSI_Tenant_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600105].[BSSI_Tenant_Lease_NextNu]'
GO
GRANT SELECT ON  [dbo].[B4600105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600105] TO [DYNGRP]
GO
