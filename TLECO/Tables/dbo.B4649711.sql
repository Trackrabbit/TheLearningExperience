CREATE TABLE [dbo].[B4649711]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Contact_Option] [smallint] NOT NULL,
[BSSI_Contact_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Provider_Account_Nu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Meter_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4649711] ADD CONSTRAINT [PKB4649711] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4649711] ON [dbo].[B4649711] ([BSSI_PortfolioID], [ADRSCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4649711] ON [dbo].[B4649711] ([BSSI_PortfolioID], [BSSI_Contact_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4649711] ON [dbo].[B4649711] ([BSSI_PortfolioID], [BSSI_Contact_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649711].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4649711].[BSSI_Contact_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[BSSI_Contact_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[BSSI_Provider_Account_Nu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4649711].[BSSI_Meter_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4649711].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4649711] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4649711] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4649711] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4649711] TO [DYNGRP]
GO
