CREATE TABLE [dbo].[SVC06200]
(
[SERVICEBOM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06200] ADD CONSTRAINT [PKSVC06200] PRIMARY KEY CLUSTERED  ([SERVICEBOM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06200] ON [dbo].[SVC06200] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06200].[SERVICEBOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06200].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC06200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06200] TO [DYNGRP]
GO
