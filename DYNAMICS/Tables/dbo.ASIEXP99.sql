CREATE TABLE [dbo].[ASIEXP99]
(
[CMPANYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Default_View] [smallint] NOT NULL,
[ASI_Favorite_Type] [smallint] NOT NULL,
[ASI_Additional_Sort] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP99] ADD CONSTRAINT [PKASIEXP99] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [USERID], [FORMNAME]) ON [PRIMARY]
GO
