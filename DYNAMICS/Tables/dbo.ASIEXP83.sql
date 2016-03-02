CREATE TABLE [dbo].[ASIEXP83]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Favorite_Save_Level] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Favorite_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Sequence] [smallint] NOT NULL,
[ASI_Field_Number] [smallint] NOT NULL,
[ASI_Field_Number_Dict_ID] [smallint] NOT NULL,
[ASI_Ascending] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP83] ADD CONSTRAINT [PKASIEXP83] PRIMARY KEY NONCLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Favorite_Save_Level], [CMPANYID], [USRCLASS], [USERID], [ASI_Favorite_Name], [ASI_Sequence]) ON [PRIMARY]
GO
