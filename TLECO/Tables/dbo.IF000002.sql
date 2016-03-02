CREATE TABLE [dbo].[IF000002]
(
[SGMNTID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[if_fund_account_index] [int] NOT NULL,
[if_cfct_account_index] [int] NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IF000002] ADD CONSTRAINT [PKIF000002] PRIMARY KEY CLUSTERED  ([SGMNTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000002].[SGMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000002].[if_fund_account_index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000002].[if_cfct_account_index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000002].[ACTDESCR]'
GO
GRANT SELECT ON  [dbo].[IF000002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IF000002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IF000002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IF000002] TO [DYNGRP]
GO
