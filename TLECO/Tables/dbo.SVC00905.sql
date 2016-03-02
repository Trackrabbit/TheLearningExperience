CREATE TABLE [dbo].[SVC00905]
(
[TECHSTAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tech_Available] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00905] ADD CONSTRAINT [PKSVC00905] PRIMARY KEY CLUSTERED  ([TECHSTAT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00905] ON [dbo].[SVC00905] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00905].[TECHSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00905].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00905].[Tech_Available]'
GO
GRANT SELECT ON  [dbo].[SVC00905] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00905] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00905] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00905] TO [DYNGRP]
GO