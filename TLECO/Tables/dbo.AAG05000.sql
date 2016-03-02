CREATE TABLE [dbo].[AAG05000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG05000] ADD CONSTRAINT [PKAAG05000] PRIMARY KEY CLUSTERED  ([USERID], [SERIES], [DOCTYPE], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG05000] ON [dbo].[AAG05000] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG05000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG05000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG05000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG05000].[DOCNUMBR]'
GO
GRANT SELECT ON  [dbo].[AAG05000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG05000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG05000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG05000] TO [DYNGRP]
GO