CREATE TABLE [dbo].[SY04900]
(
[SETUPKEY] [smallint] NOT NULL,
[EmailAllowEmbedding] [tinyint] NOT NULL,
[EmailAllowAttachments] [tinyint] NOT NULL,
[EmailAllowDocXAttach] [tinyint] NOT NULL,
[EmailAllowHTMLAttach] [tinyint] NOT NULL,
[EmailAllowPDFAttach] [tinyint] NOT NULL,
[EmailAllowXPSAttach] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04900] ADD CONSTRAINT [PKSY04900] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowEmbedding]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowAttachments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowDocXAttach]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowHTMLAttach]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowPDFAttach]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04900].[EmailAllowXPSAttach]'
GO
GRANT SELECT ON  [dbo].[SY04900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04900] TO [DYNGRP]
GO
