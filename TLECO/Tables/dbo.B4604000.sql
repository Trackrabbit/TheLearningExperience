CREATE TABLE [dbo].[B4604000]
(
[BSSI_MTA_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MTA_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MTA_Desc] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4604000] ADD CONSTRAINT [PKB4604000] PRIMARY KEY NONCLUSTERED  ([BSSI_MTA_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4604000] ON [dbo].[B4604000] ([BSSI_MTA_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4604000].[BSSI_MTA_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4604000].[BSSI_MTA_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4604000].[BSSI_MTA_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4604000].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4604000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4604000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4604000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4604000] TO [DYNGRP]
GO
