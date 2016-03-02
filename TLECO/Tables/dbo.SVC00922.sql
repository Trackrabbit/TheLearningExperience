CREATE TABLE [dbo].[SVC00922]
(
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[ESCTYPE] [smallint] NOT NULL,
[FRMSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[WAITTME] [int] NOT NULL,
[svcManagerLevel] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00922] ADD CONSTRAINT [PKSVC00922] PRIMARY KEY CLUSTERED  ([SRVTYPE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00922] ON [dbo].[SVC00922] ([SRVTYPE], [FRMSTAT], [TOSTAT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00922].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00922].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00922].[ESCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00922].[FRMSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00922].[TOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00922].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00922].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00922].[WAITTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00922].[svcManagerLevel]'
GO
GRANT SELECT ON  [dbo].[SVC00922] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00922] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00922] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00922] TO [DYNGRP]
GO
