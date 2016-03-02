CREATE TABLE [dbo].[SVC06005]
(
[ANALCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06005] ADD CONSTRAINT [PKSVC06005] PRIMARY KEY CLUSTERED  ([ANALCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06005] ON [dbo].[SVC06005] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06005].[ANALCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06005].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC06005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06005] TO [DYNGRP]
GO
