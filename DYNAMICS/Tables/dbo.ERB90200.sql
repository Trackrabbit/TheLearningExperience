CREATE TABLE [dbo].[ERB90200]
(
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[Series_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB90200] ADD CONSTRAINT [PKERB90200] PRIMARY KEY NONCLUSTERED  ([PRODID], [Series_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90200].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90200].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90200].[Series_Name]'
GO
GRANT SELECT ON  [dbo].[ERB90200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB90200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB90200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB90200] TO [DYNGRP]
GO
