CREATE TABLE [dbo].[RM40201]
(
[INDEX1] [smallint] NOT NULL,
[RMPERDSC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMPEREND] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM40201] ADD CONSTRAINT [PKRM40201] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40201].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40201].[RMPERDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40201].[RMPEREND]'
GO
GRANT SELECT ON  [dbo].[RM40201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM40201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM40201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM40201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM40201] TO [rpt_executive]
GO
