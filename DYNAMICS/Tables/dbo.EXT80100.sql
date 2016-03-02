CREATE TABLE [dbo].[EXT80100]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tag] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT80100] ADD CONSTRAINT [PKEXT80100] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPANYID], [Tag]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80100].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80100].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80100].[Tag]'
GO
GRANT SELECT ON  [dbo].[EXT80100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT80100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT80100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT80100] TO [DYNGRP]
GO
