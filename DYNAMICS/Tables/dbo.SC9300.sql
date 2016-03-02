CREATE TABLE [dbo].[SC9300]
(
[MAPID] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Number] [smallint] NOT NULL,
[SmartList_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Item_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9300] ADD CONSTRAINT [PKSC9300] PRIMARY KEY NONCLUSTERED  ([MAPID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SC9300] ON [dbo].[SC9300] ([SmartList_Number], [SmartList_Name], [SmartList_Item_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9300].[MAPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9300].[SmartList_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9300].[SmartList_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9300].[SmartList_Item_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9300].[URL]'
GO
GRANT SELECT ON  [dbo].[SC9300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9300] TO [DYNGRP]
GO
