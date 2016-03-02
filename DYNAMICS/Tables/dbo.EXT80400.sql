CREATE TABLE [dbo].[EXT80400]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Tag] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT80400] ADD CONSTRAINT [PKEXT80400] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPANYID], [Tag]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80400].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80400].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80400].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80400].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80400].[Tag]'
GO
GRANT SELECT ON  [dbo].[EXT80400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT80400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT80400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT80400] TO [DYNGRP]
GO
