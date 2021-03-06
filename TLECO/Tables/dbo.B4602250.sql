CREATE TABLE [dbo].[B4602250]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Sharing_Type] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602250] ADD CONSTRAINT [PKB4602250] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602250] ON [dbo].[B4602250] ([BSSI_Rev_Sharing_Type], [BSSI_Tenant_Lease_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602250].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602250].[BSSI_Rev_Sharing_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602250].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602250] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602250] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602250] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602250] TO [DYNGRP]
GO
