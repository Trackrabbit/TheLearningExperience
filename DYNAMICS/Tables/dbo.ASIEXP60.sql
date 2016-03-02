CREATE TABLE [dbo].[ASIEXP60]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Goto_Sequence] [smallint] NOT NULL,
[ASI_Goto_Prompt] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_GoTo_Value] [int] NOT NULL,
[ASI_GoTo_Default] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP60] ADD CONSTRAINT [PKASIEXP60] PRIMARY KEY NONCLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Goto_Sequence]) ON [PRIMARY]
GO
