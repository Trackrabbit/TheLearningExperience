CREATE TABLE [dbo].[EXT20233]
(
[Extender_Navigation_List] [int] NOT NULL,
[Extender_List_Item_ID] [int] NOT NULL,
[Colour_DDL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20233] ADD CONSTRAINT [PKEXT20233] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List], [Extender_List_Item_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20233].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20233].[Extender_List_Item_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20233].[Colour_DDL]'
GO
GRANT SELECT ON  [dbo].[EXT20233] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20233] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20233] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20233] TO [DYNGRP]
GO
