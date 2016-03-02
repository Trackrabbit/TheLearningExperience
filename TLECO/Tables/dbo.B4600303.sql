CREATE TABLE [dbo].[B4600303]
(
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Region_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Territory_Seg] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600303] ADD CONSTRAINT [PKB4600303] PRIMARY KEY NONCLUSTERED  ([SALSTERR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600303] ON [dbo].[B4600303] ([BSSI_Region_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600303].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600303].[BSSI_Region_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600303].[BSSI_Territory_Seg]'
GO
GRANT SELECT ON  [dbo].[B4600303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600303] TO [DYNGRP]
GO
