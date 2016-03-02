CREATE TABLE [dbo].[B7100601]
(
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EBRecog_Methods] [smallint] NOT NULL,
[BSSI_EBOnQty] [tinyint] NOT NULL,
[BSSI_Recog_Acct_Index1] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100601] ADD CONSTRAINT [PKB7100601] PRIMARY KEY CLUSTERED  ([BSSI_EBTemplateID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100601].[BSSI_EBTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100601].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100601].[BSSI_EBRecog_Methods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100601].[BSSI_EBOnQty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100601].[BSSI_Recog_Acct_Index1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100601].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B7100601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100601] TO [DYNGRP]
GO
