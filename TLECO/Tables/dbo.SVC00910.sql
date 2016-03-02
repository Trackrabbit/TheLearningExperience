CREATE TABLE [dbo].[SVC00910]
(
[SVCAREA] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00910] ADD CONSTRAINT [PKSVC00910] PRIMARY KEY CLUSTERED  ([SVCAREA], [ZIPCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00910] ON [dbo].[SVC00910] ([ZIPCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00910].[SVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00910].[ZIPCODE]'
GO
GRANT SELECT ON  [dbo].[SVC00910] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00910] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00910] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00910] TO [DYNGRP]
GO