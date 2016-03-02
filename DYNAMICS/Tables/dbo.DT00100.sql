CREATE TABLE [dbo].[DT00100]
(
[DICTID] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOOLBARBUTTON] [smallint] NOT NULL,
[TOOLBARSEQ] [smallint] NOT NULL,
[TOOLBARTYPE] [smallint] NOT NULL,
[TOOLBARPROMPT] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOOLBARCOMMAND] [char] (127) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOOLBARCMDPARMS] [char] (127) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DT00100] ADD CONSTRAINT [PKDT00100] PRIMARY KEY CLUSTERED  ([CMPANYID], [USERID], [TOOLBARBUTTON], [TOOLBARSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DT00100].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DT00100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DT00100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DT00100].[TOOLBARBUTTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DT00100].[TOOLBARSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DT00100].[TOOLBARTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DT00100].[TOOLBARPROMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DT00100].[TOOLBARCOMMAND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DT00100].[TOOLBARCMDPARMS]'
GO
GRANT SELECT ON  [dbo].[DT00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DT00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DT00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DT00100] TO [DYNGRP]
GO
