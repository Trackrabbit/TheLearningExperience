CREATE TABLE [dbo].[EXT20230]
(
[Extender_Navigation_List] [int] NOT NULL,
[Extender_Search_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Type] [smallint] NOT NULL,
[Column_Sizing] [smallint] NOT NULL,
[Colour_Code_CB] [tinyint] NOT NULL,
[Colour_Code_Field_ID] [int] NOT NULL,
[Navigation_Default_Actio] [int] NOT NULL,
[Navigation_Default_Detai] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20230] ADD CONSTRAINT [PKEXT20230] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20230] ON [dbo].[EXT20230] ([Extender_Form_ID], [Extender_Navigation_List]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20230].[Extender_Search_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20230].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Search_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Column_Sizing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Colour_Code_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Colour_Code_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Navigation_Default_Actio]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20230].[Navigation_Default_Detai]'
GO
GRANT SELECT ON  [dbo].[EXT20230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20230] TO [DYNGRP]
GO
