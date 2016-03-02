CREATE TABLE [dbo].[SY04704]
(
[SERVICEID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04704] ADD CONSTRAINT [PKSY04704] PRIMARY KEY NONCLUSTERED  ([SERVICEID], [SERVERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY04704] ON [dbo].[SY04704] ([SERVERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04704] ON [dbo].[SY04704] ([SERVICEID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04704].[SERVICEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04704].[SERVERID]'
GO
GRANT SELECT ON  [dbo].[SY04704] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04704] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04704] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04704] TO [DYNGRP]
GO
