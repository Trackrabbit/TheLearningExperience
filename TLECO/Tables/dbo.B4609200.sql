CREATE TABLE [dbo].[B4609200]
(
[BSSI_Amenity_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4609200] ADD CONSTRAINT [PKB4609200] PRIMARY KEY NONCLUSTERED  ([BSSI_Amenity_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4609200] ON [dbo].[B4609200] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4609200].[BSSI_Amenity_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4609200].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4609200].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4609200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4609200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4609200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4609200] TO [DYNGRP]
GO
