CREATE TABLE [dbo].[ADH00100]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ADHParentFavoriteType] [smallint] NOT NULL,
[ADHListName] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[ADHExcelReportDeployed] [tinyint] NOT NULL,
[ViewName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ViewScript] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADH00100] ADD CONSTRAINT [PKADH00100] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ADH00100] ON [dbo].[ADH00100] ([ASI_Favorite_Dict_ID], [ADHListName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[ASI_Favorite_Dict_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[ASI_Favorite_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[ADHParentFavoriteType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00100].[ADHListName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[ADHExcelReportDeployed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ADH00100].[ViewName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ADH00100].[Workflow_Status]'
GO
GRANT SELECT ON  [dbo].[ADH00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ADH00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ADH00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ADH00100] TO [DYNGRP]
GO
