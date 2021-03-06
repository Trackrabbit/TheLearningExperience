CREATE TABLE [dbo].[EXT20021]
(
[Extender_List_ID] [int] NOT NULL,
[Extender_List_Item_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[STRNG132] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20021] ADD CONSTRAINT [PKEXT20021] PRIMARY KEY NONCLUSTERED  ([Extender_List_ID], [Extender_List_Item_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20021] ON [dbo].[EXT20021] ([Extender_List_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20021] ON [dbo].[EXT20021] ([Extender_List_ID], [STRNG132], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20021].[Extender_List_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20021].[Extender_List_Item_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20021].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20021].[STRNG132]'
GO
GRANT SELECT ON  [dbo].[EXT20021] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20021] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20021] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20021] TO [DYNGRP]
GO
