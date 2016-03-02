CREATE TABLE [dbo].[SVC00930]
(
[Work_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Billable_Work] [tinyint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcPostToPayroll] [tinyint] NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00930] ADD CONSTRAINT [PKSVC00930] PRIMARY KEY CLUSTERED  ([Work_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00930] ON [dbo].[SVC00930] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00930].[Work_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00930].[Billable_Work]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00930].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00930].[svcPostToPayroll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00930].[PAYRCORD]'
GO
GRANT SELECT ON  [dbo].[SVC00930] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00930] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00930] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00930] TO [DYNGRP]
GO
