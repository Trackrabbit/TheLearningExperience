CREATE TABLE [dbo].[B4603500]
(
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Antenna_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603500] ADD CONSTRAINT [PKB4603500] PRIMARY KEY NONCLUSTERED  ([BSSI_Antenna_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603500] ON [dbo].[B4603500] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603500].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603500].[BSSI_Antenna_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603500].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4603500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603500] TO [DYNGRP]
GO
