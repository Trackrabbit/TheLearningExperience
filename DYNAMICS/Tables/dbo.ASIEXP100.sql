CREATE TABLE [dbo].[ASIEXP100]
(
[CMPANYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Field_Number] [smallint] NOT NULL,
[ASI_Field_Number_Dict_ID] [smallint] NOT NULL,
[ASI_Ascending] [smallint] NOT NULL,
[ASI_Sequence] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP100] ADD CONSTRAINT [PKASIEXP100] PRIMARY KEY CLUSTERED  ([CMPANYID], [USERID], [FORMNAME], [ASI_Sequence]) ON [PRIMARY]
GO
