CREATE TABLE [dbo].[B4600101]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Date] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Sequence] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600101] ADD CONSTRAINT [PKB4600101] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [BSSI_Date]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600101].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600101].[BSSI_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600101].[BSSI_Sequence]'
GO
GRANT SELECT ON  [dbo].[B4600101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600101] TO [DYNGRP]
GO
