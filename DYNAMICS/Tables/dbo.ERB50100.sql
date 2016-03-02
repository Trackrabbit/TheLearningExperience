CREATE TABLE [dbo].[ERB50100]
(
[Excel_Report_Role] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Permission] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB50100] ADD CONSTRAINT [PKERB50100] PRIMARY KEY NONCLUSTERED  ([Excel_Report_Role]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB50100].[Excel_Report_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB50100].[Excel_Report_Permission]'
GO
GRANT SELECT ON  [dbo].[ERB50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB50100] TO [DYNGRP]
GO
