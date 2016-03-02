CREATE TABLE [dbo].[B4640015]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MajorStoreSqFt] [numeric] (19, 5) NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640015] ADD CONSTRAINT [PKB4640015] PRIMARY KEY NONCLUSTERED  ([BSSI_Template_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640015] ON [dbo].[B4640015] ([BSSI_PortfolioID], [BSSI_Template_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640015] ON [dbo].[B4640015] ([BSSI_Template_ID], [BSSI_PortfolioID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640015] ON [dbo].[B4640015] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640015].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640015].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640015].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640015].[BSSI_MajorStoreSqFt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640015].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640015] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640015] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640015] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640015] TO [DYNGRP]
GO
