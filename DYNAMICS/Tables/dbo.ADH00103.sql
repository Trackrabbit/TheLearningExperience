CREATE TABLE [dbo].[ADH00103]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Sequence] [smallint] NOT NULL,
[ADHTableDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldDictID] [smallint] NOT NULL,
[ADHFilterType] [smallint] NOT NULL,
[ADHFilterValue] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00103] ADD CONSTRAINT [PKADH00103] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00103].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00103].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00103].[ASI_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00103].[ADHTableDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00103].[ADHFieldDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00103].[ADHFieldDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00103].[ADHFilterType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00103].[ADHFilterValue]'
GO
GRANT SELECT ON  [dbo].[ADH00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00103] TO [DYNGRP]
GO
