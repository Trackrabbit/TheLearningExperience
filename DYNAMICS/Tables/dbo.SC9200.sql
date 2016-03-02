CREATE TABLE [dbo].[SC9200]
(
[SmartList_Number] [smallint] NOT NULL,
[SmartList_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Item_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9200] ADD CONSTRAINT [PKSC9200] PRIMARY KEY CLUSTERED  ([SmartList_Number], [SmartList_Name], [SmartList_Item_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9200].[SmartList_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9200].[SmartList_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9200].[SmartList_Item_Name]'
GO
GRANT SELECT ON  [dbo].[SC9200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9200] TO [DYNGRP]
GO
