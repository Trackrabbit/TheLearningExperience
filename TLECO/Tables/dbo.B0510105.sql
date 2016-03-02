CREATE TABLE [dbo].[B0510105]
(
[MJW_Investor_Group_ID] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_Group_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510105] ADD CONSTRAINT [PKB0510105] PRIMARY KEY NONCLUSTERED  ([MJW_Investor_Group_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510105].[MJW_Investor_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510105].[MJW_Investor_Group_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510105].[MJW_Investor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510105].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510105].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510105] TO [DYNGRP]
GO
