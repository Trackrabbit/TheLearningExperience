CREATE TABLE [dbo].[SVC00953]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00953] ADD CONSTRAINT [PKSVC00953] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00953].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00953].[TIMEZONE]'
GO
GRANT SELECT ON  [dbo].[SVC00953] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00953] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00953] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00953] TO [DYNGRP]
GO
