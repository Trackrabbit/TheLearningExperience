CREATE TABLE [dbo].[ADH00102]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Sequence] [smallint] NOT NULL,
[ADHTableFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHTableTo] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldDictIDFrom] [smallint] NOT NULL,
[ADHFieldTo] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHFieldDictIDTo] [smallint] NOT NULL,
[ADHJoinType] [smallint] NOT NULL,
[ADHDisplayRelation] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00102] ADD CONSTRAINT [PKADH00102] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ASI_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00102].[ADHTableFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00102].[ADHTableTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00102].[ADHFieldFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ADHFieldDictIDFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00102].[ADHFieldTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ADHFieldDictIDTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ADHJoinType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00102].[ADHDisplayRelation]'
GO
GRANT SELECT ON  [dbo].[ADH00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00102] TO [DYNGRP]
GO
