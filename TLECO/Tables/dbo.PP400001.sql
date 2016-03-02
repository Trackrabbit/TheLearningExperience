CREATE TABLE [dbo].[PP400001]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[PP_Module] [smallint] NOT NULL,
[PP_Record_Type] [smallint] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Sequencer] [int] NOT NULL,
[PPOFFSEQ] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[PP_Saved_Status] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP400001] ADD CONSTRAINT [PKPP400001] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PP400001] ON [dbo].[PP400001] ([BCHSOURC], [BACHNUMB], [PP_Saved_Status], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP400001] ON [dbo].[PP400001] ([PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400001].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400001].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400001].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP400001].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400001].[PP_Saved_Status]'
GO
GRANT SELECT ON  [dbo].[PP400001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP400001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP400001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP400001] TO [DYNGRP]
GO
