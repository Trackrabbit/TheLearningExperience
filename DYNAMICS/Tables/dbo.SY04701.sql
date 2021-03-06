CREATE TABLE [dbo].[SY04701]
(
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04701] ADD CONSTRAINT [PKSY04701] PRIMARY KEY NONCLUSTERED  ([SERVERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04701].[SERVERID]'
GO
GRANT SELECT ON  [dbo].[SY04701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04701] TO [DYNGRP]
GO
