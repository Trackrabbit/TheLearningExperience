CREATE TABLE [dbo].[EXT80300]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[SmartList_Function] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Names_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Names_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Names_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Swap_Parameters] [tinyint] NOT NULL,
[Use_Document_Types] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Document_Type_Code] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Position_Table_Code] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT80300] ADD CONSTRAINT [PKEXT80300] PRIMARY KEY NONCLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80300].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80300].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80300].[SmartList_Function]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80300].[Table_Names_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80300].[Table_Names_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT80300].[Table_Names_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80300].[Swap_Parameters]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT80300].[Use_Document_Types]'
GO
GRANT SELECT ON  [dbo].[EXT80300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT80300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT80300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT80300] TO [DYNGRP]
GO
