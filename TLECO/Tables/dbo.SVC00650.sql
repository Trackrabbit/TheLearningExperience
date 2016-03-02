CREATE TABLE [dbo].[SVC00650]
(
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSCHDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00650] ADD CONSTRAINT [PKSVC00650] PRIMARY KEY CLUSTERED  ([PRICSHED]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00650] ON [dbo].[SVC00650] ([PRSCHDSC], [PRICSHED], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00650].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00650].[PRSCHDSC]'
GO
GRANT SELECT ON  [dbo].[SVC00650] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00650] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00650] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00650] TO [DYNGRP]
GO
