CREATE TABLE [dbo].[SY10750]
(
[SECDICTID] [smallint] NOT NULL,
[SECURITYTASKID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[SECRESTYPE] [smallint] NOT NULL,
[SECURITYID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10750] ADD CONSTRAINT [PKSY10750] PRIMARY KEY NONCLUSTERED  ([SECDICTID], [SECURITYTASKID], [DICTID], [SECRESTYPE], [SECURITYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10750].[SECDICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10750].[SECURITYTASKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10750].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10750].[SECRESTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10750].[SECURITYID]'
GO
GRANT SELECT ON  [dbo].[SY10750] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10750] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10750] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10750] TO [DYNGRP]
GO
