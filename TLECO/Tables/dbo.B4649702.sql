CREATE TABLE [dbo].[B4649702]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Equipment_Origin] [smallint] NOT NULL,
[BSSI_Equipment_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Asset_Index] [int] NOT NULL,
[BSSI_Asset_Suffix] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4649702] ADD CONSTRAINT [PKB4649702] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4649702] ON [dbo].[B4649702] ([BSSI_PortfolioID], [BSSI_Equipment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649702].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649702].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649702].[BSSI_Equipment_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649702].[BSSI_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649702].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649702].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649702].[BSSI_Asset_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649702].[BSSI_Asset_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4649702].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4649702] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4649702] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4649702] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4649702] TO [DYNGRP]
GO
