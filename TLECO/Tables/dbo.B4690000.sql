CREATE TABLE [dbo].[B4690000]
(
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4690000] ADD CONSTRAINT [PKB4690000] PRIMARY KEY NONCLUSTERED  ([BSSI_Description]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4690000] ON [dbo].[B4690000] ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690000].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690000].[BSSI_Tenant_Lease_Number]'
GO
GRANT SELECT ON  [dbo].[B4690000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4690000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4690000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4690000] TO [DYNGRP]
GO
