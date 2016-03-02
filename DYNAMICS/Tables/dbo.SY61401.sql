CREATE TABLE [dbo].[SY61401]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SocialNetworkID] [smallint] NOT NULL,
[oAuthToken] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY61401] ADD CONSTRAINT [PKSY61401] PRIMARY KEY NONCLUSTERED  ([USERID], [SocialNetworkID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY61401].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY61401].[SocialNetworkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY61401].[oAuthToken]'
GO
GRANT SELECT ON  [dbo].[SY61401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY61401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY61401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY61401] TO [DYNGRP]
GO
