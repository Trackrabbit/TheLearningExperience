CREATE TABLE [dbo].[ERB13000]
(
[ERB_Type] [smallint] NOT NULL,
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Role] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Permission] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB13000] ADD CONSTRAINT [PKERB13000] PRIMARY KEY NONCLUSTERED  ([ERB_Type], [Excel_Report_ID], [Excel_Report_Role]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB13000].[ERB_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB13000].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB13000].[Excel_Report_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB13000].[Excel_Report_Permission]'
GO
GRANT SELECT ON  [dbo].[ERB13000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB13000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB13000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB13000] TO [DYNGRP]
GO
