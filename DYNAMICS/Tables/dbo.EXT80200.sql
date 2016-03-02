CREATE TABLE [dbo].[EXT80200]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Window_Number] [smallint] NOT NULL,
[Tag] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT80200] ADD CONSTRAINT [PKEXT80200] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPANYID], [Extender_Type], [Window_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80200].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80200].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80200].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80200].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80200].[Tag]'
GO
GRANT SELECT ON  [dbo].[EXT80200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT80200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT80200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT80200] TO [DYNGRP]
GO
