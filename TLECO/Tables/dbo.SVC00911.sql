CREATE TABLE [dbo].[SVC00911]
(
[SRLSTAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00911] ADD CONSTRAINT [PKSVC00911] PRIMARY KEY CLUSTERED  ([SRLSTAT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00911] ON [dbo].[SVC00911] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00911].[SRLSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00911].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC00911] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00911] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00911] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00911] TO [DYNGRP]
GO
