CREATE TABLE [dbo].[B0500600]
(
[BSSI_InvestCategoryID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestmentType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestmentNextNumbe] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0500600] ADD CONSTRAINT [PKB0500600] PRIMARY KEY NONCLUSTERED  ([BSSI_InvestmentType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0500600] ON [dbo].[B0500600] ([BSSI_InvestCategoryID], [BSSI_InvestmentType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500600].[BSSI_InvestCategoryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500600].[BSSI_InvestmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500600].[BSSI_InvestmentNextNumbe]'
GO
GRANT SELECT ON  [dbo].[B0500600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0500600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0500600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0500600] TO [DYNGRP]
GO
