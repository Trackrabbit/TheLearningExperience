CREATE TABLE [dbo].[B4600400]
(
[BSSI_Region_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location_Segment] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600400] ADD CONSTRAINT [PKB4600400] PRIMARY KEY NONCLUSTERED  ([BSSI_Region_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600400] ON [dbo].[B4600400] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600400].[BSSI_Region_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600400].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600400].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4600400].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4600400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600400] TO [DYNGRP]
GO
