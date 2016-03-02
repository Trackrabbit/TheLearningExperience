CREATE TABLE [dbo].[PM40101]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX1] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDGPDYS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM40101] ADD CONSTRAINT [PKPM40101] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM40101] ON [dbo].[PM40101] ([UNIQKEY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40101].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40101].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40101].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40101].[ENDGPDYS]'
GO
GRANT SELECT ON  [dbo].[PM40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM40101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM40101] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM40101] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM40101] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM40101] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PM40101] TO [rpt_purchasing manager]
GO
