CREATE TABLE [dbo].[PP000042]
(
[PP_Module] [smallint] NOT NULL,
[PP_Record_Type] [smallint] NOT NULL,
[PPOFFSEQ] [int] NOT NULL,
[PP_Sequencer] [int] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Profile_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000042] ADD CONSTRAINT [PKPP000042] PRIMARY KEY NONCLUSTERED  ([PP_Module], [PP_Record_Type], [PPOFFSEQ], [PP_Sequencer], [PP_Document_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000042].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000042].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000042].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000042].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000042].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000042].[PP_Profile_Name]'
GO
GRANT SELECT ON  [dbo].[PP000042] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000042] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000042] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000042] TO [DYNGRP]
GO
