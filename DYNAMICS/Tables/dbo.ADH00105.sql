CREATE TABLE [dbo].[ADH00105]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Goto_Sequence] [smallint] NOT NULL,
[ADHGoToType] [smallint] NOT NULL,
[ADHGoToName] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_GoTo_Default] [tinyint] NOT NULL,
[ASI_GoTo_Value] [int] NOT NULL,
[DICTID] [smallint] NOT NULL,
[ADHSeries] [smallint] NOT NULL,
[ADHGoToFavoriteType] [smallint] NOT NULL,
[ADHGoToFavoriteName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Favorite_Save_Level] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[Series_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CommandTag] [smallint] NOT NULL,
[ADHWebSiteAddress] [char] (207) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00105] ADD CONSTRAINT [PKADH00105] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Goto_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ADH00105] ON [dbo].[ADH00105] ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ADHGoToName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_Goto_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ADHGoToType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00105].[ADHGoToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_GoTo_Default]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_GoTo_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ADHSeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ADHGoToFavoriteType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00105].[ADHGoToFavoriteName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ASI_Favorite_Save_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00105].[Series_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00105].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00105].[CommandTag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00105].[ADHWebSiteAddress]'
GO
GRANT SELECT ON  [dbo].[ADH00105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00105] TO [DYNGRP]
GO
