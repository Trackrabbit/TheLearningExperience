CREATE TABLE [dbo].[ASIEXP51]
(
[ASI_Export_Application] [smallint] NOT NULL,
[ASI_Export_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Favorite_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP51] ADD CONSTRAINT [PKASIEXP51] PRIMARY KEY CLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Favorite_Name], [ASI_Export_Application], [ASI_Export_Name]) ON [PRIMARY]
GO
