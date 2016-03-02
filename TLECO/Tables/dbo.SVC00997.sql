CREATE TABLE [dbo].[SVC00997]
(
[SVC_Module] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Form_Name] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Window_Name] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Option] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Option_Desc] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Option_Enabled] [tinyint] NOT NULL,
[SVC_Option_Pswd] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Doc_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00997] ADD CONSTRAINT [PKSVC00997] PRIMARY KEY CLUSTERED  ([SVC_Module], [SVC_Form_Name], [SVC_Window_Name], [SVC_Doc_Type], [SVC_Option]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00997] ON [dbo].[SVC00997] ([SVC_Form_Name], [SVC_Module], [SVC_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00997] ON [dbo].[SVC00997] ([SVC_Option], [SVC_Module], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Option_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00997].[SVC_Option_Enabled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00997].[SVC_Option_Pswd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00997].[SVC_Doc_Type]'
GO
GRANT SELECT ON  [dbo].[SVC00997] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00997] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00997] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00997] TO [DYNGRP]
GO
