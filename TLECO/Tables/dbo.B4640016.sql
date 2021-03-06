CREATE TABLE [dbo].[B4640016]
(
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640016] ADD CONSTRAINT [PKB4640016] PRIMARY KEY NONCLUSTERED  ([BSSI_Template_ID], [LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640016] ON [dbo].[B4640016] ([BSSI_Template_ID], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640016].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640016].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640016].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640016].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640016].[LOCNDSCR]'
GO
GRANT SELECT ON  [dbo].[B4640016] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640016] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640016] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640016] TO [DYNGRP]
GO
