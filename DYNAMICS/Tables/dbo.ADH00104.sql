CREATE TABLE [dbo].[ADH00104]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ADHCalculateFieldID] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHCalcFieldDatatype] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ADHCalcFieldDisplayValue] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADHCalcFieldPhysicalVal] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00104] ADD CONSTRAINT [PKADH00104] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ADHCalculateFieldID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00104].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00104].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00104].[ADHCalculateFieldID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00104].[ADHCalcFieldDatatype]'
GO
GRANT SELECT ON  [dbo].[ADH00104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00104] TO [DYNGRP]
GO
