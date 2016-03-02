CREATE TABLE [dbo].[PM40105]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OptionSelected_1] [tinyint] NOT NULL,
[OptionSelected_2] [tinyint] NOT NULL,
[OptionSelected_3] [tinyint] NOT NULL,
[OptionSelected_4] [tinyint] NOT NULL,
[OptionSelected_5] [tinyint] NOT NULL,
[OptionSelected_6] [tinyint] NOT NULL,
[OptionSelected_7] [tinyint] NOT NULL,
[OptionSelected_8] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM40105] ADD CONSTRAINT [PKPM40105] PRIMARY KEY CLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40105].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40105].[OptionSelected_8]'
GO
GRANT SELECT ON  [dbo].[PM40105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM40105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM40105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM40105] TO [DYNGRP]
GO
