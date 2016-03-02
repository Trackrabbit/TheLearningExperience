CREATE TABLE [dbo].[ASITAB20]
(
[ASI_Favorite_Dict_ID] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Field_Sequence] [smallint] NOT NULL,
[ASI_Field_Number] [smallint] NOT NULL,
[ASI_Field_Number_Dict_ID] [smallint] NOT NULL,
[ASI_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_Display_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_Physical_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_Use_UsrDef_Prm] [tinyint] NOT NULL,
[ASI_Field_DDL_Type] [smallint] NOT NULL,
[ASI_Field_Datatype] [smallint] NOT NULL,
[ASI_Field_Format_String] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_In_Lookup_Tabl] [tinyint] NOT NULL,
[ASI_Include_Column] [tinyint] NOT NULL,
[ASI_Display_Column] [tinyint] NOT NULL,
[ASI_Field_Description] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_Custom_Query] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Table_Technical_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASITAB20] ADD CONSTRAINT [PKASITAB20] PRIMARY KEY NONCLUSTERED  ([ASI_Favorite_Dict_ID], [ASI_Favorite_Type], [ASI_Field_Sequence]) ON [PRIMARY]
GO
