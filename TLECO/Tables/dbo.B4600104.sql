CREATE TABLE [dbo].[B4600104]
(
[BSSI_GroundLeaseTypeID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_NextNu] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600104] ADD CONSTRAINT [PKB4600104] PRIMARY KEY CLUSTERED  ([BSSI_Ground_Lease_Prefix]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600104] ON [dbo].[B4600104] ([BSSI_GroundLeaseTypeID], [BSSI_Ground_Lease_Prefix]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600104].[BSSI_GroundLeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600104].[BSSI_Ground_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600104].[BSSI_Ground_Lease_NextNu]'
GO
GRANT SELECT ON  [dbo].[B4600104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600104] TO [DYNGRP]
GO
