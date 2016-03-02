CREATE TABLE [dbo].[SY04920]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Exchange_Address] [char] (238) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Exchange_Server_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04920] ADD CONSTRAINT [PKSY04920] PRIMARY KEY CLUSTERED  ([USERID], [Exchange_Address]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04920].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04920].[Exchange_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04920].[Exchange_Server_URL]'
GO
GRANT SELECT ON  [dbo].[SY04920] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04920] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04920] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04920] TO [DYNGRP]
GO
