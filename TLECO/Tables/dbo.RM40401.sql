CREATE TABLE [dbo].[RM40401]
(
[RMDTYPAL] [smallint] NOT NULL,
[DOCDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCABREV] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SETUPKEY] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM40401] ADD CONSTRAINT [PKRM40401] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM40401] ON [dbo].[RM40401] ([SETUPKEY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40401].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40401].[DOCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40401].[DOCABREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40401].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40401].[SETUPKEY]'
GO
GRANT SELECT ON  [dbo].[RM40401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM40401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM40401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM40401] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM40401] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM40401] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM40401] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM40401] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM40401] TO [rpt_executive]
GO
