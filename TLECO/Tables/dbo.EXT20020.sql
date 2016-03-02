CREATE TABLE [dbo].[EXT20020]
(
[Extender_List_ID] [int] NOT NULL,
[Extender_List_Desc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Shared_List] [tinyint] NOT NULL,
[Sort_List_CB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20020] ADD CONSTRAINT [PKEXT20020] PRIMARY KEY NONCLUSTERED  ([Extender_List_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20020] ON [dbo].[EXT20020] ([Shared_List], [Extender_List_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20020].[Extender_List_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20020].[Extender_List_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20020].[Shared_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20020].[Sort_List_CB]'
GO
GRANT SELECT ON  [dbo].[EXT20020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20020] TO [DYNGRP]
GO
