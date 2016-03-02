CREATE TABLE [dbo].[B4601000]
(
[BSSI_Site_TypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Revenue_Seg] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Cost_Seg] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Prepaid_Seg] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Rent_Seg] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4601000] ADD CONSTRAINT [PKB4601000] PRIMARY KEY NONCLUSTERED  ([BSSI_Site_TypeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4601000] ON [dbo].[B4601000] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Site_TypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Revenue_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Cost_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Prepaid_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4601000].[BSSI_Ground_Rent_Seg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4601000].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4601000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4601000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4601000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4601000] TO [DYNGRP]
GO
