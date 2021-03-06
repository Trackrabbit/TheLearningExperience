CREATE TABLE [dbo].[SY00801]
(
[RULEID] [smallint] NOT NULL,
[RSRCID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSRCSBID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSCSTATE] [smallint] NOT NULL,
[RSRDESC] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USECT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY00801] ADD CONSTRAINT [PKSY00801] PRIMARY KEY NONCLUSTERED  ([RULEID], [CMPANYID], [RSRCID], [RSRCSBID], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY00801] ON [dbo].[SY00801] ([RSRCID], [RSRCSBID], [RULEID], [CMPANYID], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY00801] ON [dbo].[SY00801] ([USERID], [CMPANYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00801].[RULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00801].[RSRCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00801].[RSRCSBID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00801].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00801].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00801].[RSCSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00801].[RSRDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00801].[USECT]'
GO
GRANT SELECT ON  [dbo].[SY00801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00801] TO [DYNGRP]
GO
