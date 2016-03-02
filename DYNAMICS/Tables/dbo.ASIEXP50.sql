CREATE TABLE [dbo].[ASIEXP50]
(
[ASI_Export_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Export_Application] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Export_Document] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Macro_Before] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_Macro_After] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIEXP50] ADD CONSTRAINT [PKASIEXP50] PRIMARY KEY NONCLUSTERED  ([ASI_Export_Application], [ASI_Export_Name]) ON [PRIMARY]
GO
