CREATE TABLE [dbo].[B4699200]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Amenity_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4699200] ADD CONSTRAINT [PKB4699200] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4699200] ON [dbo].[B4699200] ([BSSI_PortfolioID], [BSSI_Amenity_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4699200] ON [dbo].[B4699200] ([BSSI_PortfolioID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699200].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699200].[BSSI_Amenity_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699200].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4699200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4699200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4699200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4699200] TO [DYNGRP]
GO
